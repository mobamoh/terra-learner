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
  project = "leafy-outrider-431811-d4" # this is the project id
  region  = "us-central1"
  alias   = "iowa"
}

provider "google" {
  project = "leafy-outrider-431811-d4"
  region  = "europe-west10"
  alias   = "berlin"
}
