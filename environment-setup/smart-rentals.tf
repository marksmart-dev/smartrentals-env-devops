module "cs-svc-smart-rentals-prod-svc" {
  source  = "terraform-google-modules/project-factory/google//modules/svpc_service_project"
  version = "~> 18.0"

  name            = "smart-rentals-prod-service"
  project_id      = "smart-rentals-prod-svc"
  org_id          = var.org_id
  billing_account = var.billing_account
  folder_id       = local.folder_map["Operations/Production"].id

  shared_vpc = module.cs-vpc-prod-shared.project_id
  shared_vpc_subnets = [
    try(module.cs-vpc-prod-shared.subnets["australia-southeast2/subnet-prod-2"].self_link, ""),
  ]

  domain     = data.google_organization.org.domain
  group_name = local.group_aliases["operations-prod-service"]
  group_role = "roles/viewer"

  activate_apis = [
    "compute.googleapis.com",
    "run.googleapis.com",
    "artifactregistry.googleapis.com",
    "cloudbuild.googleapis.com",
  ]
}

resource "google_artifact_registry_repository" "smart_rentals_web" {
  provider = google
  project  = "smart-rentals-prod-svc"
  location = "australia-southeast1"
  repository_id = "smart-rentals-web"
  description   = "Docker repository for Smart Rentals Web App"
  format        = "DOCKER"

  # depends_on = [module.cs-svc-smart-rentals-prod-svc]
}

resource "google_cloud_run_service" "smart_rentals_web" {
  provider = google
  project  = "smart-rentals-prod-svc"
  name     = "smart-rentals-web"
  location = "australia-southeast1"

  template {
    spec {
      containers {
        image = "us-docker.pkg.dev/cloudrun/container/hello"
        ports {
          container_port = 3000
        }
      }
    }
  }

  traffic {
    percent = 100
    latest_revision = true
  }

  # depends_on = [module.cs-svc-smart-rentals-prod-svc]
}

/*
data "google_iam_policy" "noauth" {
  binding {
    role = "roles/run.invoker"
    members = [
      "allUsers",
    ]
  }
}

resource "google_cloud_run_service_iam_policy" "noauth" {
  project     = "smart-rentals-prod-svc"
  location    = google_cloud_run_service.smart_rentals_web.location
  service     = google_cloud_run_service.smart_rentals_web.name
  policy_data = data.google_iam_policy.noauth.policy_data
}
*/
