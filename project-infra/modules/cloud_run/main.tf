// modules/cloud_run/main.tf
resource "google_cloud_run_service" "this" {
  name     = var.name
  location = var.region
  project = var.project_id

    template {
    spec {
      service_account_name = var.service_account
      containers {
        image = var.image

      dynamic "env" {
        for_each = var.env_vars
        content {
          name  = env.key
          value = env.value
        }
      }

        resources {
          limits = {
            cpu    = "1000m"
            memory = "512Mi"
          }
        }

        ports {
          container_port = 80
        }
      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }
}


resource "google_cloud_run_service_iam_policy" "public_access" {
  location = google_cloud_run_service.this.location
  service  = google_cloud_run_service.this.name
  project = google_cloud_run_service.this.project

  policy_data = jsonencode({
    bindings = [{
      role    = "roles/run.invoker"
      members = ["allUsers"]
    }]
  })
}