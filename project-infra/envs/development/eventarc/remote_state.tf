data "terraform_remote_state" "cloud_run_action" {
  backend = "gcs"
  config = {
    bucket = "terraform_state_storedata"
    prefix = "terraform/state/development/cloud_run"
  }
}