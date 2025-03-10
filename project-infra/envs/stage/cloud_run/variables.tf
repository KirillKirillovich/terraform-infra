variable "project_id" {
  description = "project id"
  type        = string
}

variable "env" {
  description = "environment"
  type        = string
  default = "stage"
}

variable "region" {
  description = "region"
  type        = string
  default     = "us-central1"
}

variable "cloud_run_main_name" {
  description = "main cloud run name"
  type        = string
  default     = "main-nginx-image-stage"
}

variable "cloud_run_actions_name" {
  description = "actions cloud run name"
  type        = string
  default     = "actions-nginx-image-stage"
}

variable "main_image" {
  description = "main image"
  type        = string
}

variable "actions_image" {
  description = "actions image"
  type        = string
}

variable "service_account" {
  description = "service account"
  type        = string
}

variable "env_vars" {
  description = "List of env vars"
  type        = map(string)
  default = {}
}