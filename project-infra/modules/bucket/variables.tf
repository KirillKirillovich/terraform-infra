variable "name" {
  description = "name of the bucket"
  type        = string
}

variable "location" {
  description = "bucket location"
  type        = string
}

variable "storage_class" {
  description = "storage"
  type        = string
}

variable "versioning" {
  description = "versioning"
  type        = bool
}

variable "uniform_bucket_level_access" {
  description = "Uniform ACL"
  type        = bool
}

variable "force_destroy" {
  description = "force destroy"
  type        = bool
}

variable "public_access" {
  description = "public access"
  type        = string
  default = "enforced"
}
