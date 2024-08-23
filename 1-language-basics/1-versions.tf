# Terraform settings Block
// in production, is best to use ~> instead of =>
terraform {
  required_version = "~> 1.9.5" 
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "~> 5.42.0"
    }
  }
}

# Terraform provider Block
provider "google" {
  project = "" # this is the project id
  region = "us-central1"
}