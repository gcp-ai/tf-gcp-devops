module "workbench_instance_iam_policy" {
  source  = "../../modules/workbench_instance_iam_policy"
  project_id = var.project_id
  location = var.meta_region
  instance_name = module.workbench_instance.id
  role =  var.workbench_policy_role
  members = var.workbench_policy_members

  depends_on = [ module.workbench_instance ]

}