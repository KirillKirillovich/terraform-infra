output "bucket_name" {
  description = "bucket name"
  value       = google_storage_bucket.bucket.name
}

output "bucket_url" {
  description = "URL"
  value       = "gs://${google_storage_bucket.bucket.name}"
}
