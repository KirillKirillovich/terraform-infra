terraform {
  backend "gcs" {
    bucket = "terraform_state_storedata"
    prefix = "terraform/state/stage/scheduler"
  }
}