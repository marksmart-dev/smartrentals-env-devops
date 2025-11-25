# In order to create google groups, the calling identity should have at least the
# Group Admin role in Google Admin. More info: https://support.google.com/a/answer/2405986

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
