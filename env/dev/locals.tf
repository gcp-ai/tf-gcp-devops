locals {
  project              = "${var.meta_env}-${var.meta_project_prefix}"
  project_id           = "${var.meta_env}-${var.meta_project_prefix}"
  feature_group_input_uri = "bq://${var.project_id}.tf_job_load_dataset.job_load_table}"
}

