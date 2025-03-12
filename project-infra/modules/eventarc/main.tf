resource "google_eventarc_trigger" "trigger" {
  name     = var.trigger_name
  location = var.location

  matching_criteria {
    attribute = "type"
    value     = var.event_type
  }

  matching_criteria {
    attribute = "document"
    value     = var.path_pattern
  }

  matching_criteria {
    attribute = "database"
    value     = var.database
  }

  matching_criteria {
    attribute = "namespace"
    value     = "(default)"
  }

  service_account = var.service_account

  destination {
    cloud_run_service {
      service = var.cloud_run_service
      region  = var.cloud_run_region
      path    = var.cloud_run_path
    }
  }

  event_data_content_type = "application/protobuf"
  project         = var.project_id
}
