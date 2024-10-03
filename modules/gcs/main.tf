resource "google_storage_bucket" "default" {
  count         = var.create_count
  project       = var.project_id
  name          = var.bucket_name
  location      = var.bucket_region
  force_destroy = var.force_destroy
  storage_class = var.storage_class

  uniform_bucket_level_access = var.uniform_bucket_level_access


  versioning {
    enabled = var.versioning
  }

  retention_policy {
    is_locked        = false
    retention_period = var.retention_period
  }

}


resource "google_storage_bucket_iam_member" "public_access" {
  bucket = google_storage_bucket.default[0].name
  role   = "roles/storage.objectViewer"
  member = "allUsers"
}



# resource "google_storage_bucket_iam_binding" "landing_page_iam_binding" {
#   bucket = "tf-test-jobload"
#   role   = "roles/storage.objectViewer"
#   members = [
#     "allUsers"
#   ]
# }