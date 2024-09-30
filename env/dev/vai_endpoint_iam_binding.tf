module "vai_endpoint_iam_binding" {
  source  = "../../modules/vai_endpoint_iam_binding"
  project_id = var.project_id
  location = var.meta_region
  endpoint_name = module.vai_endpoint.endpoint_name
  role =  var.endpoint_binding_role
  members = var.endpoint_binding_members

  depends_on = [ module.vai_endpoint ]

}