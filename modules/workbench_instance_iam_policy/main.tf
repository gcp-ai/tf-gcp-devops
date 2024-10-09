data "google_iam_policy" "admin" {
  binding {
    role = var.role
    members = var.members
  }
}

resource "google_workbench_instance_iam_policy" "policy" {
  project = var.project_id
  location = var.location
  name =    var.instance_name
  policy_data = data.google_iam_policy.admin.policy_data
}

