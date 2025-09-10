// Variable definitions for Google App Engine service

variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "The GCP region for the App Engine"
  type        = string
  default     = "us-central"
}

variable "service_name" {
  description = "The name of the App Engine service"
  type        = string
}

variable "version_id" {
  description = "The version ID for the App Engine service"
  type        = string
}

variable "node_env" {
  description = "The Node.js environment (e.g., development, production)"
  type        = string
}

variable "port" {
  description = "The port on which the application will run"
  type        = number
  default     = 8080
}

variable "min_idle_instances" {
  description = "Minimum number of idle instances"
  type        = number
  default     = 1
}

variable "max_idle_instances" {
  description = "Maximum number of idle instances"
  type        = number
  default     = 5
}

variable "min_total_instances" {
  description = "Minimum number of total instances"
  type        = number
  default     = 1
}

variable "max_total_instances" {
  description = "Maximum number of total instances"
  type        = number
  default     = 10
}

variable "target_cpu_utilization" {
  description = "Target CPU utilization for scaling"
  type        = number
  default     = 0.6
}