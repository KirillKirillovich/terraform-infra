output "cloud_run_url" {
  description = "Action cloud run url"
  value       = google_cloud_run_service.this.status[0].url
}
