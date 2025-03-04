locals {
  region = "northamerica-northeast1"

  project = {
    id = "matthewlymer-production"
  }
}

provider "google" {
  region  = local.region
  project = local.project.id
}

terraform {
  backend "gcs" {
    bucket = "490635812867-tfstate"
    prefix = "matthewlymer-production-wl-homelink"
  }
}
