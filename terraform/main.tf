// Main configuration for Google App Engine service

resource "google_app_engine_application" "app" {
  project     = var.project_id
  location_id = var.region
}

resource "google_app_engine_standard_app_version" "app_version" {
  service     = var.service_name
  version_id  = var.version_id
  runtime     = "nodejs18"
  entrypoint  = {
    shell = "npm start"
  }

  env_variables = {
    NODE_ENV = var.node_env
    PORT     = var.port
  }

  automatic_scaling {
    min_idle_instances = var.min_idle_instances
    max_idle_instances = var.max_idle_instances
    min_total_instances = var.min_total_instances
    max_total_instances = var.max_total_instances
    cpu_utilization {
      target_utilization = var.target_cpu_utilization
    }
  }

  health_check {
    enable_health_check = true
    host                = "localhost"
    healthy_threshold   = 2
    unhealthy_threshold = 10
    restart_threshold   = 10
    check_interval      = "5s"
    timeout             = "4s"
  }
}