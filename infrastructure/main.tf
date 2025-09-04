variable "project_id" {
  description = "The GCP project ID"
}

variable "region" {
  description = "The GCP region"
}

variable "service_name" {
  description = "The name of the service"
}

variable "db_name" {
  description = "The name of the database"
}

provider "google" {
  project = var.project_id
  region  = var.region
}