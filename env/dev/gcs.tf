module "gcs" {
  source                      = "../../modules/gcs"
  for_each                    = { for i, v in var.gcs_buckets : i => v }
  bucket_region               = var.meta_region
  project_id                  = var.project_id
  bucket_name                 = each.value.bucket_name
  force_destroy               = each.value.force_destroy
  storage_class               = each.value.storage_class
  uniform_bucket_level_access = each.value.uniform_bucket_level_access
  versioning                  = each.value.versioning
  retention_period            = each.value.retention_period

  depends_on = [
    time_sleep.wait_30_seconds,
    module.googleapis_storage
  ]
}

# module "gcs_iam" {
#   source = "../../modules/gcs_iam"

#   bucket_name = local.bucket_prof_images
#   role        = var.bucket_role
#   entity      = var.bucket_entity

#   depends_on = [
#     module.gcs
#   ]

# }
