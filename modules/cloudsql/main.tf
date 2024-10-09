resource "google_sql_database" "default" {
  project   = var.project
  name      = var.name
  instance  = var.instance
  collation = var.collation
}