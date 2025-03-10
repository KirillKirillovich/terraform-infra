resource "google_cloud_scheduler_job" "this" {
  name     = "${var.name}_${var.environment}"
  region = var.region
  schedule = var.cron

  http_target {
    uri         = "${var.actions_endpoint}/${var.route}"
    http_method = "POST"
    headers = {
      "Content-Type" = "application/json"
    }
    oidc_token {
      service_account_email = var.default_sa
    }
  }
}
