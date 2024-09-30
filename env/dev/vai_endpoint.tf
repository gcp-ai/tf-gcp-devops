module "vai_endpoint" {
  source  = "../../modules/vai_endpoint"
  project_id = var.project_id
  endpoint_name = var.endpoint_name
  location = var.meta_region

}