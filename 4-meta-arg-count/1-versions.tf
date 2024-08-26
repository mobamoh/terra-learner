terraform {
    required_version = "~> 1.9.5"
    required_providers {
        google = {
            source  = "hashicorp/google"
            version = "~> 5.42.0"
        }
    }
}

provider "google" {
  project = var.gcp_project
  region  = var.gcp_region
  alias   = "berlin"
}