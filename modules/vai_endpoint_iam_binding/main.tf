resource "google_vertex_ai_endpoint_iam_binding" "binding" {
  provider = google-beta
  project = var.project_id
  location = var.location

  endpoint = var.endpoint_name
  role = var.role
  members = [
    var.members 
  ]
}