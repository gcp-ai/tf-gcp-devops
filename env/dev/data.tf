data "google_bigquery_dataset" "dataset" {
  dataset_id = module.bigquery.dataset_id
  project    = var.project_id
  depends_on = [
    module.bigquery
  ]
}