# resource "google_vertex_ai_metadata_store" "store" {
#   provider      = google-beta
#   project       = var.project_id
#   name          = var.name
#   description   = var.description
#   region        = var.region
# }