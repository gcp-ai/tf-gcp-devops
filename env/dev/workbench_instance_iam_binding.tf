# module "workbench_instance_iam_binding" {
#   source  = "../../modules/workbench_instance_iam_binding"
#   project_id = var.project_id
#   location = var.meta_zone
#   workbench_name = module.workbench_instance.id
#   role =  var.workbench_binding_role
#   members = var.workbench_binding_members

#   depends_on = [ module.workbench_instance ]

# }