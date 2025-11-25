terraform {
  backend "gcs" {
    bucket = "cs-tfstate-australia-southeast1-64c33f3e42fc47d1ae1f040df111"
    prefix = "terraform"
  }
}
