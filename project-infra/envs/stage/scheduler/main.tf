module "scheduler_sync" {
  source = "../../../modules/scheduler"
  environment = var.environment
  actions_endpoint = var.actions_endpoint
  region = var.region
  default_sa = var.default_sa
  cron = var.cron_scheduler_sync
  route = var.route.scheduled_sync
  name = "on_scheduled_sync"
}

module "scheduled_complete" {
  source = "../../../modules/scheduler"
  environment = var.environment
  actions_endpoint = var.actions_endpoint
  region = var.region
  default_sa = var.default_sa
  cron = var.cron_scheduler_complete
  route = var.route.scheduled_complete
  name = "on_scheduled_complete"
}

module "scheduled_health_data" {
  source = "../../../modules/scheduler"
  environment = var.environment
  actions_endpoint = var.actions_endpoint
  region = var.region
  default_sa = var.default_sa
  cron = var.cron_scheduled_health_data
  route = var.route.scheduled_health_data
  name = "on_scheduled_health_data"
}