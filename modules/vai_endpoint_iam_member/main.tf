resource "google_vertex_ai_endpoint_iam_member" "member" {
  provider = google-beta
  project = var.project_id
  location = var.location

  endpoint = var.endpoint_name
  role = var.role
  member =   var.member 
  
  }