resource "google_service_account" "default" {
  project      = var.project
  account_id   = var.service_account_id
  display_name = var.display_name
}