provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_app_engine_application" "app" {
  location_id = var.region
}

resource "google_app_engine_standard_app_version" "gae_service" {
  service_id   = var.service_name
  version_id   = var.version_id
  runtime      = "nodejs18"
  entrypoint {
    shell = "npm start"
  }
  env_variables = var.env_variables

  automatic_scaling {
    min_instances = var.min_instances
    max_instances = var.max_instances
    standard_scheduler_settings {
      target_cpu_utilization = var.target_cpu_utilization
      target_throughput_utilization = var.target_throughput_utilization
    }
  }

  health_check {
    enable_health_check = true
    host                = "localhost"
  }
}