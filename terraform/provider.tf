terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }

  required_version = ">= 1.0.0"
}

provider "google" {
  credentials = file("<path_to_your_service_account_key>.json")
  project     = var.project_id
  region      = var.region
}