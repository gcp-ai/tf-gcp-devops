# module "vai_endpoint_iam_policy" {
#   source  = "../../modules/vai_endpoint_iam_policy"
#   project_id = var.project_id
#   location = var.meta_region
#   endpoint_name = module.vai_endpoint.endpoint_name
#   role =  var.endpoint_policy_role
#   members = var.endpoint_policy_members

#   depends_on = [ module.vai_endpoint ]

# }