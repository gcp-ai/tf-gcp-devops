resource "google_workbench_instance_iam_binding" "binding" {
  project = var.project_id
  location = var.location

  name = var.workbench_name
  role = var.role
  members =  var.members 
}