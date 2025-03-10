variable "environment" {
  description = "environment"
  type        = string
  default = "development"
}

variable "region" {
  description = "region"
  type        = string
  default = "us-central1"
}

variable "default_sa" {
  description = "default sa"
  type        = string
}

variable "cron_scheduler_sync" {
  description = "cron"
  type        = string
}

variable "cron_scheduler_complete" {
  description = "cron"
  type        = string
}

variable "cron_scheduled_health_data" {
  description = "cron"
  type        = string
}

variable "project_id" {
  description = "project id"
  type        = string
}

variable "route_scheduled_complete" {
  description = "route"
  type        = string
  default = "scheduled_complete"
}

variable "route_scheduled_sync" {
  description = "route"
  type        = string
  default = "scheduled_sync"
}

variable "route_scheduled_health_data" {
  description = "route"
  type        = string
  default = "scheduled_health_data"
}
