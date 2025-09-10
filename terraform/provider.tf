// Provider configuration for Google Cloud Platform

provider "google" {
  credentials = file("<path-to-your-service-account-key>.json")
  project     = var.project_id
  region      = var.region
}