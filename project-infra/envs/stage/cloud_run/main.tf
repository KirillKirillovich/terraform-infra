module "cloud_run_main" {
  source = "../../../modules/cloud_run"
  name = var.cloud_run_main_name
  image = var.main_image
  region = var.region
  env_vars = var.env_vars
  service_account = var.service_account
  project_id = var.project_id
}

module "cloud_run_action" {
  source = "../../../modules/cloud_run"
  name = var.cloud_run_actions_name
  image = var.actions_image
  region = var.region
  env_vars = var.env_vars
  service_account = var.service_account
  project_id = var.project_id
}

output "cloud_run_action_url" {
  value       = module.cloud_run_action.cloud_run_url
  description = "cloud run url form module"
}