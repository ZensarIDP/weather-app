variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "The GCP region"
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

variable "env_variables" {
  description = "Environment variables for the App Engine service"
  type        = map(string)
  default     = {}
}

variable "min_instances" {
  description = "Minimum number of instances for automatic scaling"
  type        = number
  default     = 1
}

variable "max_instances" {
  description = "Maximum number of instances for automatic scaling"
  type        = number
  default     = 5
}

variable "target_cpu_utilization" {
  description = "Target CPU utilization for scaling"
  type        = number
  default     = 0.6
}

variable "target_throughput_utilization" {
  description = "Target throughput utilization for scaling"
  type        = number
  default     = 0.6
}