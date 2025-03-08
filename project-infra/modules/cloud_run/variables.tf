variable "name" {
  description = "cloud run name"
  type = string
}

variable "project" {
  description = "project id"
  type = string
}

variable "region" {
  description = "cloud run region"
  type = string
}

variable "image" {
  description = "cloud run image"
  type = string
}

variable "service_account" {
  description = "service account for deploy"
  type = string
}

variable "env_vars" {
  description = "env vars"
  type        = map(string)
}