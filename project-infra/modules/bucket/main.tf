resource "google_storage_bucket" "bucket" {
  name          = var.name
  location      = var.location
  storage_class = var.storage_class

  force_destroy = var.force_destroy

  uniform_bucket_level_access = var.uniform_bucket_level_access

  public_access_prevention = var.public_access

  versioning {
    enabled = var.versioning
  }
}
