variable "environment" {
  description = "environment"
  type        = string
}

variable "name" {
  description = "scheduler name"
  type        = string
}

variable "region" {
  description = "region"
  type        = string
}

variable "actions_endpoint" {
  description = "scheduled_sync"
  type        = string
}

variable "default_sa" {
  description = "default sa"
  type        = string
}

variable "cron" {
  description = "crown"
  type        = string
}


variable "route" {
  description = "route"
  type        = string
}