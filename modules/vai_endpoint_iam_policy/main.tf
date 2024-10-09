data "google_iam_policy" "admin" {
  binding {
    role = var.role
    members = var.members
  }
}

resource "google_vertex_ai_endpoint_iam_policy" "policy" {
  provider = google-beta
  project = var.project_id
  location = var.location
  endpoint = var.endpoint_name
  policy_data = data.google_iam_policy.admin.policy_data
}