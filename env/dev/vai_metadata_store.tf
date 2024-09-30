module "vai_metadata_store" {
  source     = "../../modules/vai_metadata_store"
  project_id = var.project_id
  name       = var.metadata_name
  region     = var.meta_region

}