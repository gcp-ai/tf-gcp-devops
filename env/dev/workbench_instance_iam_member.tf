module "workbench_instance_iam_member" {
  source  = "../../modules/workbench_instance_iam_member"
  project_id = var.project_id
  location = var.meta_zone
  name =  module.workbench_instance.id
  role =  var.workbench_member_role
  member = var.workbench_member

  depends_on = [ module.workbench_instance ]

}