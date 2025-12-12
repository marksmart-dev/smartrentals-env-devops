module "apigee-project" {
  source  = "terraform-google-modules/project-factory/google"
  version = "~> 18.0"

  name            = "apigee-prod"
  project_id      = "apigee-prod-svc-${random_string.suffix.result}"
  org_id          = var.org_id
  folder_id       = local.folder_map["API_Manager/Production"].id
  billing_account = var.billing_account

  svpc_host_project_id = module.cs-project-vpc-host-prod.project_id

  activate_apis = [
    "apigee.googleapis.com",
    "servicenetworking.googleapis.com",
    "compute.googleapis.com",
    "cloudkms.googleapis.com",
    "cloudresourcemanager.googleapis.com"
  ]
}

resource "random_string" "suffix" {
  length  = 4
  special = false
  upper   = false
}

resource "google_compute_global_address" "apigee_range" {
  name          = "apigee-range"
  purpose       = "VPC_PEERING"
  address_type  = "INTERNAL"
  prefix_length = 16
  network       = module.cs-vpc-prod-shared.network_self_link
  project       = module.cs-project-vpc-host-prod.project_id
}

resource "google_service_networking_connection" "apigee_vpc_connection" {
  network                 = module.cs-vpc-prod-shared.network_self_link
  service                 = "servicenetworking.googleapis.com"
  reserved_peering_ranges = [google_compute_global_address.apigee_range.name]
  depends_on              = [module.cs-project-vpc-host-prod]
}

resource "google_kms_key_ring" "apigee_keyring" {
  name     = "apigee-keyring"
  location = "us-central1"
  project  = module.apigee-project.project_id
}

resource "google_kms_crypto_key" "apigee_key" {
  name     = "apigee-key"
  key_ring = google_kms_key_ring.apigee_keyring.id

  lifecycle {
    prevent_destroy = true
  }
}

resource "google_project_service_identity" "apigee_sa" {
  provider = google-beta
  project  = module.apigee-project.project_id
  service  = "apigee.googleapis.com"
}

resource "time_sleep" "wait_for_sa" {
  create_duration = "30s"
  depends_on      = [google_project_service_identity.apigee_sa]
}

resource "google_kms_crypto_key_iam_member" "apigee_sa_keyuser" {
  crypto_key_id = google_kms_crypto_key.apigee_key.id
  role          = "roles/cloudkms.cryptoKeyEncrypterDecrypter"
  member        = google_project_service_identity.apigee_sa.member
  depends_on    = [time_sleep.wait_for_sa]
}

resource "google_apigee_organization" "org" {
  analytics_region                     = "us-central1"
  display_name                         = "apigee-org"
  description                          = "Terraform-provisioned Apigee Org."
  project_id                           = module.apigee-project.project_id
  authorized_network                   = "projects/${module.cs-project-vpc-host-prod.project_id}/global/networks/vpc-prod-shared"
  runtime_database_encryption_key_name = google_kms_crypto_key.apigee_key.id

  depends_on = [
    google_service_networking_connection.apigee_vpc_connection,
    google_kms_crypto_key_iam_member.apigee_sa_keyuser,
  ]
}

resource "google_apigee_instance" "apigee_instance_prod" {
  name     = "apigee-instance-prod"
  location = "australia-southeast1"
  org_id   = google_apigee_organization.org.id
}