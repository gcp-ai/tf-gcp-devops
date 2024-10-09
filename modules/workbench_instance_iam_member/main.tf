resource "google_workbench_instance_iam_member" "member" {

  project = var.project_id
  location = var.location

  name = var.name
  role = var.role
  member =   var.member 
  
  }