output "cloud_run_url" {
  description = "cloud run url"
  value       = google_cloud_run_service.this.status[0].url
}

output "cloud_run_name" {
  description = "cloud run name"
  value       = google_cloud_run_service.this.name
}