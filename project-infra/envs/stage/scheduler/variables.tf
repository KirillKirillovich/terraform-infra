variable "environment" {
  description = "environment"
  type        = string
  default = "stage"
}

variable "region" {
  description = "region"
  type        = string
  default = "us-central1"
}

variable "actions_endpoint" {
  description = "scheduled_sync"
  type        = string
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

variable "cron_on_scheduled_complete" {
  description = "cron"
  type        = string
}

variable "project_id" {
  description = "environment"
  type        = string
}

variable "route_scheduled_complete" {
  description = "environment"
  type        = string
  default = "scheduled_complete"
}

variable "route_scheduled_sync" {
  description = "environment"
  type        = string
  default = "scheduled_sync"
}

variable "route_scheduled_health_data" {
  description = "environment"
  type        = string
  default = "scheduled_health_data"
}
