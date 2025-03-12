variable "trigger_name" {
  description = "Eventarc name"
  type        = string
}

variable "location" {
  description = "region"
  type        = string
}

variable "event_type" {
  description = "Firestore event"
  type        = string
}

variable "path_pattern" {
  description = "Firestore path"
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

variable "cloud_run_service" {
  description = "Cloud Run service"
  type        = string
}

variable "cloud_run_region" {
  description = "region Cloud Run"
  type        = string
}

variable "cloud_run_path" {
  description = "cloud run pathя"
  type        = string
}



variable "project_id" {
  description = "project id"
  type        = string
}
