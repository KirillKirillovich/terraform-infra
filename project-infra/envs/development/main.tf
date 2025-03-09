module "cloud_run_main" {
  source = "../../modules/cloud_run"
  name = var.cloud_run_main_name
  image = var.main_image
  region = var.region
  env_vars = var.env_vars
  service_account = var.service_account
}

module "cloud_run_action" {
  source = "../../modules/cloud_run"
  name = var.cloud_run_actions_name
  image = var.actions_image
  region = var.region
  env_vars = var.env_vars
  service_account = var.service_account
}