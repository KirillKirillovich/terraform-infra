terraform {
  backend "gcs" {
    bucket = "terraform_state_storedata"
    prefix = "terraform/state/stage/cloud_run"
  }
}