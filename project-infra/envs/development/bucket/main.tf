module "backup_bucket_development" {
  source      = "../../../modules/bucket"
  name = "terraform_infra_backup_development"
  location    = "us-central1"
  storage_class = "STANDARD"
  versioning  = false
  force_destroy = true
  uniform_bucket_level_access = true
}
