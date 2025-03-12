module "eventarc_on_active_challenge_update" {
  source            = "../../../modules/eventarc"
  project_id        = var.project_id
  trigger_name      = "on-active-challenge-update-development"
  event_type        = "google.cloud.firestore.document.v1.updated"
  path_pattern      = "active_challenges/{uid}"
  database          = var.database
  service_account   = var.service_account
  cloud_run_service = data.terraform_remote_state.cloud_run_action.outputs.cloud_run_action_name
  cloud_run_region  = "us-central1"
  cloud_run_path    = "/on_active_challenge_update"
  location          = var.location
}

module "eventarc_on_new_user" {
  source            = "../../../modules/eventarc"
  project_id        = var.project_id
  trigger_name      = "on-new-user-development"
  event_type        = "google.cloud.firestore.document.v1.created"
  path_pattern      = "users/{uid}"
  database          = var.database
  service_account   = var.service_account
  cloud_run_service = data.terraform_remote_state.cloud_run_action.outputs.cloud_run_action_name
  cloud_run_region  = "us-central1"
  cloud_run_path    = "/on_new_user"
  location          = var.location
}
