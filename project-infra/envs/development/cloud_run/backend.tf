terraform {
  backend "gcs" {
    bucket = "terraform_state_storedata"
    prefix = "terraform/state/development/cloud_run"
  }
}