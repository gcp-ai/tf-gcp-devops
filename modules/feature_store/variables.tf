variable "project_id" {
  description = "The ID of the project in which the resource belongs"
  type        = string
}
variable "region" {}
variable "name" {}
variable "labels" {}
variable "fixed_node_count" {}
variable "force_destroy" {}


variable "name_fs_entitytype" {}
variable "labels_fs_entitytype" {}
variable "description_fs_entitytype" {}
variable "disabled" {}
variable "monitoring_interval_days" {}
variable "staleness_days" {}
variable "numerical_threshold_config_value" {}
variable "categorical_threshold_config_value" {}
variable "state" {}
variable "anomaly_detection_baseline" {}



variable "fs_entitytype_feature_name" {}
variable "fs_entitytype_feature_labels" {}
variable "value_type" {}