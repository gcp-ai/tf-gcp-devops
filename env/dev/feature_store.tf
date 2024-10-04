# module "feature_store" {
#   source  = "../../modules/feature_store"
#   project_id = var.project_id
#   region = var.meta_region
#   name = var.feature_store.name
#   labels = var.feature_store.labels
#   fixed_node_count = var.feature_store.fixed_node_count
#   force_destroy = var.feature_store.force_destroy

#   name_fs_entitytype = var.feature_store.name_fs_entitytype
#   labels_fs_entitytype = var.feature_store.labels_fs_entitytype
#   description_fs_entitytype = var.feature_store.description_fs_entitytype
#   disabled = var.feature_store.disabled
#   monitoring_interval_days = var.feature_store.monitoring_interval_days
#   staleness_days = var.feature_store.staleness_days
#   numerical_threshold_config_value = var.feature_store.numerical_threshold_config_value
#   categorical_threshold_config_value = var.feature_store.categorical_threshold_config_value
#   state = var.feature_store.state
#   anomaly_detection_baseline = var.feature_store.anomaly_detection_baseline


#   fs_entitytype_feature_name = var.feature_store.fs_entitytype_feature_name
#   fs_entitytype_feature_labels = var.feature_store.fs_entitytype_feature_labels
#   value_type = var.feature_store.value_type

#   depends_on = [ module.feature_group ]
# }




