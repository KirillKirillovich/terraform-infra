output "trigger_id" {
  description = "ID созданного Eventarc триггера"
  value       = google_eventarc_trigger.trigger.id
}

