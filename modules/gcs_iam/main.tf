resource "google_storage_bucket_iam_binding" "landing_page_iam_binding" {
  bucket = var.bucket_name
  role   = var.role
  members = [
    var.entity
  ]
}