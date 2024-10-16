# Bigquery module
module "bigquery" {
  source                      = "../../modules/bigquery"
  project                     = var.project_id
  dataset_id                  = var.bigquery_dataset.dataset_id
  friendly_name               = var.bigquery_dataset.friendly_name
  description                 = var.bigquery_dataset.description
  delete_contents_on_destroy  = var.bigquery_dataset.delete_contents_on_destroy
  default_table_expiration_ms = var.bigquery_dataset.default_table_expiration_ms
  table_id                    = var.bigquery_dataset.table_id
  location                    = var.bigquery_dataset.location

  depends_on = [module.googleapis_bigquery]
}