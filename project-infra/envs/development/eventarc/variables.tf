variable "location" {
  description = "region"
  type        = string
}

variable "database" {
  description = "Firestore name"
  type        = string
}

variable "service_account" {
  description = "Service Account Eventarc"
  type        = string
}

variable "cloud_run_region" {
  description = "region Cloud Run"
  type        = string
}

variable "project_id" {
  description = "Project id"
  type        = string
}