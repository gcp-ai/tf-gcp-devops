# module "google_vertex_ai_endpoint_iam_member" {
#   source  = "../../modules/vai_endpoint_iam_member"
#   project_id = var.project_id
#   location = var.meta_region
#   endpoint_name = module.vai_endpoint.endpoint_name
#   role =  var.endpoint_member_role
#   member = var.endpoint_member

#   depends_on = [ module.vai_endpoint ]

# }