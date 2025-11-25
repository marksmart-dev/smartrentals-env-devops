module "cs-org-policy-essentialcontacts_allowedContactDomains" {
  source  = "terraform-google-modules/org-policy/google//modules/org_policy_v2"
  version = "~> 5.2"

  policy_root      = "organization"
  policy_root_id   = var.org_id
  constraint       = "essentialcontacts.allowedContactDomains"
  policy_type      = "list"
  exclude_folders  = []
  exclude_projects = []

  rules = [
    {
      enforcement = null
      allow = [
        "@smartrentalstsv.com.au",
      ]
      deny       = []
      conditions = []
  }, ]
}

module "cs-org-policy-iam_allowedPolicyMemberDomains" {
  source  = "terraform-google-modules/org-policy/google//modules/org_policy_v2"
  version = "~> 5.2"

  policy_root      = "organization"
  policy_root_id   = var.org_id
  constraint       = "iam.allowedPolicyMemberDomains"
  policy_type      = "list"
  exclude_folders  = []
  exclude_projects = []

  rules = [
    {
      enforcement = null
      allow = [
        "C00hs4gl3",
      ]
      deny       = []
      conditions = []
  }, ]
}

module "cs-org-policy-storage_publicAccessPrevention" {
  source  = "terraform-google-modules/org-policy/google//modules/org_policy_v2"
  version = "~> 5.2"

  policy_root      = "organization"
  policy_root_id   = var.org_id
  constraint       = "storage.publicAccessPrevention"
  policy_type      = "boolean"
  exclude_folders  = []
  exclude_projects = []

  rules = [
    {
      enforcement = true
      allow       = []
      deny        = []
      conditions  = []
  }, ]
}

module "cs-org-policy-storage_uniformBucketLevelAccess" {
  source  = "terraform-google-modules/org-policy/google//modules/org_policy_v2"
  version = "~> 5.2"

  policy_root      = "organization"
  policy_root_id   = var.org_id
  constraint       = "storage.uniformBucketLevelAccess"
  policy_type      = "boolean"
  exclude_folders  = []
  exclude_projects = []

  rules = [
    {
      enforcement = true
      allow       = []
      deny        = []
      conditions  = []
  }, ]
}

module "cs-org-policy-compute_requireOsLogin" {
  source  = "terraform-google-modules/org-policy/google//modules/org_policy_v2"
  version = "~> 5.2"

  policy_root      = "organization"
  policy_root_id   = var.org_id
  constraint       = "compute.requireOsLogin"
  policy_type      = "boolean"
  exclude_folders  = []
  exclude_projects = []

  rules = [
    {
      enforcement = true
      allow       = []
      deny        = []
      conditions  = []
  }, ]
}

module "cs-org-policy-iam_automaticIamGrantsForDefaultServiceAccounts" {
  source  = "terraform-google-modules/org-policy/google//modules/org_policy_v2"
  version = "~> 5.2"

  policy_root      = "organization"
  policy_root_id   = var.org_id
  constraint       = "iam.automaticIamGrantsForDefaultServiceAccounts"
  policy_type      = "boolean"
  exclude_folders  = []
  exclude_projects = []

  rules = [
    {
      enforcement = true
      allow       = []
      deny        = []
      conditions  = []
  }, ]
}

module "cs-org-policy-iam_disableServiceAccountKeyCreation" {
  source  = "terraform-google-modules/org-policy/google//modules/org_policy_v2"
  version = "~> 5.2"

  policy_root      = "organization"
  policy_root_id   = var.org_id
  constraint       = "iam.disableServiceAccountKeyCreation"
  policy_type      = "boolean"
  exclude_folders  = []
  exclude_projects = []

  rules = [
    {
      enforcement = true
      allow       = []
      deny        = []
      conditions  = []
  }, ]
}

module "cs-org-policy-iam_disableServiceAccountKeyUpload" {
  source  = "terraform-google-modules/org-policy/google//modules/org_policy_v2"
  version = "~> 5.2"

  policy_root      = "organization"
  policy_root_id   = var.org_id
  constraint       = "iam.disableServiceAccountKeyUpload"
  policy_type      = "boolean"
  exclude_folders  = []
  exclude_projects = []

  rules = [
    {
      enforcement = true
      allow       = []
      deny        = []
      conditions  = []
  }, ]
}

module "cs-org-policy-compute_vmExternalIpAccess" {
  source  = "terraform-google-modules/org-policy/google//modules/org_policy_v2"
  version = "~> 5.2"

  policy_root      = "organization"
  policy_root_id   = var.org_id
  constraint       = "compute.vmExternalIpAccess"
  policy_type      = "list"
  exclude_folders  = []
  exclude_projects = []

  rules = [
    {
      enforcement = true
      allow       = []
      deny        = []
      conditions  = []
  }, ]
}

module "cs-org-policy-compute_disableNestedVirtualization" {
  source  = "terraform-google-modules/org-policy/google//modules/org_policy_v2"
  version = "~> 5.2"

  policy_root      = "organization"
  policy_root_id   = var.org_id
  constraint       = "compute.disableNestedVirtualization"
  policy_type      = "boolean"
  exclude_folders  = []
  exclude_projects = []

  rules = [
    {
      enforcement = true
      allow       = []
      deny        = []
      conditions  = []
  }, ]
}

module "cs-org-policy-compute_disableSerialPortAccess" {
  source  = "terraform-google-modules/org-policy/google//modules/org_policy_v2"
  version = "~> 5.2"

  policy_root      = "organization"
  policy_root_id   = var.org_id
  constraint       = "compute.disableSerialPortAccess"
  policy_type      = "boolean"
  exclude_folders  = []
  exclude_projects = []

  rules = [
    {
      enforcement = true
      allow       = []
      deny        = []
      conditions  = []
  }, ]
}

module "cs-org-policy-sql_restrictAuthorizedNetworks" {
  source  = "terraform-google-modules/org-policy/google//modules/org_policy_v2"
  version = "~> 5.2"

  policy_root      = "organization"
  policy_root_id   = var.org_id
  constraint       = "sql.restrictAuthorizedNetworks"
  policy_type      = "boolean"
  exclude_folders  = []
  exclude_projects = []

  rules = [
    {
      enforcement = true
      allow       = []
      deny        = []
      conditions  = []
  }, ]
}

module "cs-org-policy-compute_restrictProtocolForwardingCreationForTypes" {
  source  = "terraform-google-modules/org-policy/google//modules/org_policy_v2"
  version = "~> 5.2"

  policy_root      = "organization"
  policy_root_id   = var.org_id
  constraint       = "compute.restrictProtocolForwardingCreationForTypes"
  policy_type      = "list"
  exclude_folders  = []
  exclude_projects = []

  rules = [
    {
      enforcement = null
      allow = [
        "INTERNAL",
      ]
      deny       = []
      conditions = []
  }, ]
}

module "cs-org-policy-sql_restrictPublicIp" {
  source  = "terraform-google-modules/org-policy/google//modules/org_policy_v2"
  version = "~> 5.2"

  policy_root      = "organization"
  policy_root_id   = var.org_id
  constraint       = "sql.restrictPublicIp"
  policy_type      = "boolean"
  exclude_folders  = []
  exclude_projects = []

  rules = [
    {
      enforcement = true
      allow       = []
      deny        = []
      conditions  = []
  }, ]
}

module "cs-org-policy-compute_restrictXpnProjectLienRemoval" {
  source  = "terraform-google-modules/org-policy/google//modules/org_policy_v2"
  version = "~> 5.2"

  policy_root      = "organization"
  policy_root_id   = var.org_id
  constraint       = "compute.restrictXpnProjectLienRemoval"
  policy_type      = "boolean"
  exclude_folders  = []
  exclude_projects = []

  rules = [
    {
      enforcement = true
      allow       = []
      deny        = []
      conditions  = []
  }, ]
}

module "cs-org-policy-compute_setNewProjectDefaultToZonalDNSOnly" {
  source  = "terraform-google-modules/org-policy/google//modules/org_policy_v2"
  version = "~> 5.2"

  policy_root      = "organization"
  policy_root_id   = var.org_id
  constraint       = "compute.setNewProjectDefaultToZonalDNSOnly"
  policy_type      = "boolean"
  exclude_folders  = []
  exclude_projects = []

  rules = [
    {
      enforcement = true
      allow       = []
      deny        = []
      conditions  = []
  }, ]
}

module "cs-org-policy-compute_skipDefaultNetworkCreation" {
  source  = "terraform-google-modules/org-policy/google//modules/org_policy_v2"
  version = "~> 5.2"

  policy_root      = "organization"
  policy_root_id   = var.org_id
  constraint       = "compute.skipDefaultNetworkCreation"
  policy_type      = "boolean"
  exclude_folders  = []
  exclude_projects = []

  rules = [
    {
      enforcement = true
      allow       = []
      deny        = []
      conditions  = []
  }, ]
}

module "cs-org-policy-compute_disableVpcExternalIpv6" {
  source  = "terraform-google-modules/org-policy/google//modules/org_policy_v2"
  version = "~> 5.2"

  policy_root      = "organization"
  policy_root_id   = var.org_id
  constraint       = "compute.disableVpcExternalIpv6"
  policy_type      = "boolean"
  exclude_folders  = []
  exclude_projects = []

  rules = [
    {
      enforcement = true
      allow       = []
      deny        = []
      conditions  = []
  }, ]
}
