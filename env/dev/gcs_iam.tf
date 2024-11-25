module "gcs_iam" {
  source = "../../modules/gcs_iam"

  bucket_name = var.gcs_buckets[0].bucket_name
  role        = var.bucket_role
  entity      = var.bucket_entity

  depends_on = [
    module.gcs
  ]

}
