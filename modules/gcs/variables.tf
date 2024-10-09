variable "bucket_region" {}
variable "project_id" {}
variable "bucket_name" {}
variable "force_destroy" {}
variable "storage_class" {}
variable "retention_period" {}
variable "uniform_bucket_level_access" {}
variable "versioning" {}
variable "create_count" {
  type    = number
  default = 1
}
