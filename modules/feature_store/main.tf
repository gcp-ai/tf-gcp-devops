resource "google_vertex_ai_featurestore" "featurestore" {
  project = var.project_id
  name     = var.name
  labels = {
    foo = var.labels
  }
  region   = var.region
  online_serving_config {
    fixed_node_count = var.fixed_node_count
  }
  # encryption_spec {
  #   kms_key_name = "kms-name"
  # }
  force_destroy = var.force_destroy
}


resource "google_vertex_ai_featurestore_entitytype" "entity" {
  name     = var.name_fs_entitytype
  labels = {
    foo = var.labels_fs_entitytype
  }
  description = var.description_fs_entitytype
  featurestore = google_vertex_ai_featurestore.featurestore.id
  monitoring_config {
    snapshot_analysis {
      disabled = var.disabled
      monitoring_interval_days = var.monitoring_interval_days
      staleness_days = var.staleness_days
    }
    numerical_threshold_config {
      value = var.numerical_threshold_config_value
    }
    categorical_threshold_config {
      value = var.categorical_threshold_config_value
    }
    import_features_analysis {
      state = var.state
      anomaly_detection_baseline = var.anomaly_detection_baseline
    }
  }
}


resource "google_vertex_ai_featurestore_entitytype_feature" "feature" {
  name     =  var.fs_entitytype_feature_name
  labels = {
    foo = var.fs_entitytype_feature_labels
  }
  entitytype = google_vertex_ai_featurestore_entitytype.entity.id

  value_type = var.value_type
}