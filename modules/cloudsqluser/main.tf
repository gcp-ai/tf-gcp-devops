resource "google_sql_user" "default" {
  count    = var.create_count
  name     = var.name
  instance = var.instance
  host     = var.host
  password = var.password
  project  = var.project
}