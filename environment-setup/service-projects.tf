module "cs-svc-sales-prod-svc-yr0e" {
  source  = "terraform-google-modules/project-factory/google//modules/svpc_service_project"
  version = "~> 18.0"

  name            = "sales-prod-service"
  project_id      = "sales-prod-svc-yr0e"
  org_id          = var.org_id
  billing_account = var.billing_account
  folder_id       = local.folder_map["Sales/Production"].id

  shared_vpc = module.cs-vpc-prod-shared.project_id
  shared_vpc_subnets = [
    try(module.cs-vpc-prod-shared.subnets["australia-southeast1/subnet-prod-1"].self_link, ""),
  ]

  domain     = data.google_organization.org.domain
  group_name = module.cs-gg-sales-prod-service.name
  group_role = "roles/viewer"
  depends_on = [
    module.cs-org-policy-iam_allowedPolicyMemberDomains,
    module.cs-org-policy-iam_automaticIamGrantsForDefaultServiceAccounts,
    module.cs-org-policy-compute_skipDefaultNetworkCreation,
  ]
}

module "cs-svc-sales-nonprod-svc-yr0e" {
  source  = "terraform-google-modules/project-factory/google//modules/svpc_service_project"
  version = "~> 18.0"

  name            = "sales-nonprod-service"
  project_id      = "sales-nonprod-svc-yr0e"
  org_id          = var.org_id
  billing_account = var.billing_account
  folder_id       = local.folder_map["Sales/Non-Production"].id

  shared_vpc = module.cs-vpc-nonprod-shared.project_id
  shared_vpc_subnets = [
    try(module.cs-vpc-nonprod-shared.subnets["australia-southeast1/subnet-non-prod-1"].self_link, ""),
  ]

  domain     = data.google_organization.org.domain
  group_name = module.cs-gg-sales-nonprod-service.name
  group_role = "roles/viewer"
  depends_on = [
    module.cs-org-policy-iam_allowedPolicyMemberDomains,
    module.cs-org-policy-iam_automaticIamGrantsForDefaultServiceAccounts,
    module.cs-org-policy-compute_skipDefaultNetworkCreation,
  ]
}

module "cs-svc-operations-prod-svc-yr0e" {
  source  = "terraform-google-modules/project-factory/google//modules/svpc_service_project"
  version = "~> 18.0"

  name            = "operations-prod-service"
  project_id      = "operations-prod-svc-yr0e"
  org_id          = var.org_id
  billing_account = var.billing_account
  folder_id       = local.folder_map["Operations/Production"].id

  shared_vpc = module.cs-vpc-prod-shared.project_id
  shared_vpc_subnets = [
    try(module.cs-vpc-prod-shared.subnets["australia-southeast2/subnet-prod-2"].self_link, ""),
  ]

  domain     = data.google_organization.org.domain
  group_name = module.cs-gg-operations-prod-service.name
  group_role = "roles/viewer"
  depends_on = [
    module.cs-org-policy-iam_allowedPolicyMemberDomains,
    module.cs-org-policy-iam_automaticIamGrantsForDefaultServiceAccounts,
    module.cs-org-policy-compute_skipDefaultNetworkCreation,
  ]
}

module "cs-svc-operations-nonprod-svc-yr0e" {
  source  = "terraform-google-modules/project-factory/google//modules/svpc_service_project"
  version = "~> 18.0"

  name            = "operations-nonprod-service"
  project_id      = "operations-nonprod-svc-yr0e"
  org_id          = var.org_id
  billing_account = var.billing_account
  folder_id       = local.folder_map["Operations/Non-Production"].id

  shared_vpc = module.cs-vpc-nonprod-shared.project_id
  shared_vpc_subnets = [
    try(module.cs-vpc-nonprod-shared.subnets["australia-southeast2/subnet-non-prod-2"].self_link, ""),
  ]

  domain     = data.google_organization.org.domain
  group_name = module.cs-gg-operations-nonprod-service.name
  group_role = "roles/viewer"
  depends_on = [
    module.cs-org-policy-iam_allowedPolicyMemberDomains,
    module.cs-org-policy-iam_automaticIamGrantsForDefaultServiceAccounts,
    module.cs-org-policy-compute_skipDefaultNetworkCreation,
  ]
}
