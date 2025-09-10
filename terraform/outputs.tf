// Output values for important resources

output "app_engine_url" {
  description = "The URL of the deployed App Engine service"
  value       = google_app_engine_standard_app_version.app_version.version_url
}

output "service_name" {
  description = "The name of the App Engine service"
  value       = google_app_engine_standard_app_version.app_version.service
}