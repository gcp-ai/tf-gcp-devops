# module "gcs_object" {
#   source       = "../../modules/gcs_object"
#   for_each     = { for i, v in var.gcsobjs : i => v }
#   create_count = each.value.create_count
#   name         = each.value.filename
#   file_source  = each.value.filesource
#   bucket_name  = local.boot_bucket_name


#   depends_on = [
#     time_sleep.wait_30_seconds,
#     module.googleapis_storage,
#     module.gcs
#   ]

# }
