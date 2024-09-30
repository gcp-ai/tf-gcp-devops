resource "google_storage_bucket_object" "default" {
  count  = var.create_count
  name   = var.name
  source = var.file_source
  bucket = var.bucket_name
}