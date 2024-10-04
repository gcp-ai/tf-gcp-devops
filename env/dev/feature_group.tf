# module "feature_group" {
#   source           = "../../modules/feature_group"
#   project_id       = var.project_id
#   name             = var.feature_group.fg_name
#   description      = var.feature_group.fg_description
#   region           = var.meta_region
#   label-one        = var.feature_group.fg_label_one
#   input_uri        = "bq://vai-kldmkr1.tf_job_load_dataset.job_load_table"
#   entity_id_column = var.feature_group.fg_entity_id_columns
  
#   depends_on       = [module.bigquery]
# }