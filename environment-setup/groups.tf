# In order to create google groups, the calling identity should have at least the
# Group Admin role in Google Admin. More info: https://support.google.com/a/answer/2405986


locals {
  group_emails = {
    "sales-prod-service"       = "sales-prod-service@smartrentalstsv.com.au"
    "sales-nonprod-service"    = "sales-nonprod-service@smartrentalstsv.com.au"
    "operations-prod-service"  = "operations-prod-service@smartrentalstsv.com.au"
    "operations-nonprod-service" = "operations-nonprod-service@smartrentalstsv.com.au"
  }
  group_names = {
    "sales-prod-service"       = "groups/043ky6rz3rux1qu"
    "sales-nonprod-service"    = "groups/01jlao462i6yrcy"
    "operations-prod-service"  = "groups/01664s552iw9e3o"
    "operations-nonprod-service" = "groups/03oy7u294f1k018"
  }
  group_aliases = {
    "sales-prod-service"       = "sales-prod-service"
    "sales-nonprod-service"    = "sales-nonprod-service"
    "operations-prod-service"  = "operations-prod-service"
    "operations-nonprod-service" = "operations-nonprod-service"
  }
}

/*
module "cs-gg-sales-prod-service" {
  source  = "terraform-google-modules/group/google"
  version = "~> 0.6"

  id           = "sales-prod-service@smartrentalstsv.com.au"
  display_name = "sales-prod-service"
  customer_id  = data.google_organization.org.directory_customer_id
  types = [
    "default",
    "security",
  ]
}

module "cs-gg-sales-nonprod-service" {
  source  = "terraform-google-modules/group/google"
  version = "~> 0.6"

  id           = "sales-nonprod-service@smartrentalstsv.com.au"
  display_name = "sales-nonprod-service"
  customer_id  = data.google_organization.org.directory_customer_id
  types = [
    "default",
    "security",
  ]
}

module "cs-gg-operations-prod-service" {
  source  = "terraform-google-modules/group/google"
  version = "~> 0.6"

  id           = "operations-prod-service@smartrentalstsv.com.au"
  display_name = "operations-prod-service"
  customer_id  = data.google_organization.org.directory_customer_id
  types = [
    "default",
    "security",
  ]
}

module "cs-gg-operations-nonprod-service" {
  source  = "terraform-google-modules/group/google"
  version = "~> 0.6"

  id           = "operations-nonprod-service@smartrentalstsv.com.au"
  display_name = "operations-nonprod-service"
  customer_id  = data.google_organization.org.directory_customer_id
  types = [
    "default",
    "security",
  ]
}
*/
