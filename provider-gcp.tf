provider "google" {
  project     = var.project_id
  region      = var.region
  credentials = var.gcp_credentials
}

provider "google-beta" {
  project     = var.project_id
  region      = var.region
  credentials = var.gcp_credentials
}

# https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/integer
resource "random_integer" "int" {
  min = 100
  max = 1000000
}

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.32.0"
    }
    google-beta = {
      version = "~> 4.32.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.1"
    }
  }
}
