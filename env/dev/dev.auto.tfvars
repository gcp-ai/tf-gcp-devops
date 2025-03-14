# Project variables
meta_region  = "us-central1"
meta_zone    = "us-central1-a"
meta_sa_name = "dev1-sa"




# Googleapis variables
##################################################

googleapis = {
  notebooks            = "notebooks.googleapis.com"
  serviceusage         = "serviceusage.googleapis.com"
  cloudresourcemanager = "cloudresourcemanager.googleapis.com"
  compute              = "compute.googleapis.com"
  iap                  = "iap.googleapis.com"
  aiplatform           = "aiplatform.googleapis.com"
  cloudkms             = "cloudkms.googleapis.com"
  bigquery             = "bigquery.googleapis.com"
  storage              = "storage.googleapis.com"
  servicenetworking    = "servicenetworking.googleapis.com"
  sqladmin             = "sqladmin.googleapis.com"
  iam                  = "iam.googleapis.com"
}   
  

# Service account variables
#################################################

serviceaccount = { 
  sa_service_account_id   = "dev2-sa"
  display_name            = "SA for tf development"
}



# VPC
#################################################
vpc = {
  name                    = "tf-vpc"
  routing_mode            = "GLOBAL"
  auto_create_subnetworks = true
}


vpc_peering = {
    name          = "private-ip-address"
    service       = "servicenetworking.googleapis.com"
    prefix_length = 16
    address_type  = "INTERNAL"
    purpose       = "VPC_PEERING"  
}


#Firewall rules
#################################################
fw_rules = [{
  name                    = "tf-allow-vai-ingress"
  description             = null
  direction               = "INGRESS"
  priority                = null
  ranges                  = ["0.0.0.0/0"]
  source_tags             = null
  source_service_accounts = null
  target_tags             = null
  target_service_accounts = null
  allow = [{
    protocol = "tcp"
    # ports    = ["6379", "50051", "3306", "22", "80","2049"]
    ports = ["50051", "50052"]
  }]
  deny = []
  log_config = {
    metadata = "INCLUDE_ALL_METADATA"
  }
  }, {
  name                    = "tf-allow-internal-ingress"
  description             = null
  direction               = "INGRESS"
  priority                = null
  ranges                  = ["10.160.0.0/20", "10.42.0.0/16", "10.40.0.0/16"]
  source_tags             = null
  source_service_accounts = null
  target_tags             = ["deeplearning-vm", "notebook-instance"]
  target_service_accounts = null
  allow = [{
    protocol = "tcp"
    ports    = ["6379", "2049"]
  }]
  deny = []
  log_config = {
    metadata = "INCLUDE_ALL_METADATA"
  }
  }, {
  name                    = "tf-allow-ssh-ingress"
  description             = null
  direction               = "INGRESS"
  priority                = null
  ranges                  = ["35.235.240.0/20"]
  source_tags             = null
  source_service_accounts = null
  target_tags             = []
  target_service_accounts = null
  allow = [{
    protocol = "tcp"
    ports    = ["22"] 
  }]
  deny = []
  log_config = {
    metadata = "INCLUDE_ALL_METADATA"
  }
}]



# Workbench
#################################################
workbench_instance_name = "tf-workbench-instance"
workbench_machine_type  = "n1-standard-1"
workbench_zone  = "us-central1-c"



# EndPoint
#################################################
endpoint_name = "tf-endpoint"


# EndPoint binding 
#################################################
endpoint_binding_role    = "roles/viewer"
endpoint_binding_members = "serviceAccount:dev1-sa@gcp-automation-demo1.iam.gserviceaccount.com"


# EndPoint Member 
#################################################
endpoint_member_role = "roles/aiplatform.viewer"
endpoint_member      = "serviceAccount:dev1-sa@gcp-automation-demo1.iam.gserviceaccount.com"


# EndPoint Policy 
#################################################
endpoint_policy_role    = "roles/viewer"
endpoint_policy_members = ["serviceAccount:dev1-sa@gcp-automation-demo1.iam.gserviceaccount.com"]


# Metadata Store
#################################################
metadata_name = "tf-metdata-store"


# Workbench Policy 
#################################################
workbench_policy_role    = "roles/viewer"
workbench_policy_members = ["serviceAccount:dev1-sa@gcp-automation-demo1.iam.gserviceaccount.com"]


# Workbench Member 
#################################################
workbench_member_role = "roles/notebooks.viewer"
workbench_member      = "serviceAccount:dev1-sa@gcp-automation-demo1.iam.gserviceaccount.com"


# Workbench binding  
#################################################
workbench_binding_role    = "roles/viewer"
workbench_binding_members = ["serviceAccount:dev1-sa@gcp-automation-demo1.iam.gserviceaccount.com"]

 
# GCS
#################################################
gcs_buckets = [  
  {  
    bucket_name                 = "tf-ga-jobload"
    force_destroy               = true
    uniform_bucket_level_access = true
    storage_class               = "STANDARD"
    retention_period            = 1
    versioning                  = false
  },
  {
    bucket_name                 = "tf-ga-jobload-backup"
    force_destroy               = true
    uniform_bucket_level_access = true
    storage_class               = "STANDARD"
    retention_period            = 1
    versioning                  = false
  },
  {
    bucket_name                 = "tf-jobload2"
    force_destroy               = true
    uniform_bucket_level_access = true
    storage_class               = "STANDARD"
    retention_period            = 1
    versioning                  = false
  }
] 


# GCS Public 
################################################# 
bucket_role   = "roles/storage.objectViewer"
bucket_entity = "allUsers"

 

# Feature Group
#################################################
feature_group = {
  fg_name              = "tf_fgroup1"
  fg_description       = "Test description feature group"
  fg_label_one         = "value-one"
  fg_entity_id_columns = "feature_id"
}

 
# Feature Store  
################################################
feature_store = {
  name              = "tf_test_featurestore1"
  labels              = "bar"
  fixed_node_count       = 2
  force_destroy         = true
  name_fs_entitytype = "terraform"
  labels_fs_entitytype = "bar"
  description_fs_entitytype = "test description"
  disabled = false
  monitoring_interval_days = 1
  staleness_days = 21
  numerical_threshold_config_value = 0.8
  categorical_threshold_config_value = 10.0
  state = "ENABLED"
  anomaly_detection_baseline = "PREVIOUS_IMPORT_FEATURES_STATS"

  fs_entitytype_feature_name = "terraform"
  fs_entitytype_feature_labels = "bar"
  value_type = "INT64_ARRAY"
}

# bigquery #
#################################################
bigquery_dataset = { 
  dataset_id                 = "tf_job_load_dataset"
  friendly_name              = "job load dataset"
  description                = "To test the job load "
  delete_contents_on_destroy = true
  # (1000*60*60*24*7) for 7 days
  default_table_expiration_ms = 604800000
  location                    = "us-central1" 
  table_id                    = "job_load_table"
} 


# Cloud SQL Instance #
#################################################
cloudsql_instances = [{
  name                = "tf-jobload-instance"
  database_version    = "MYSQL_8_0"
  tier                = "db-f1-micro"
  auth_network_ip     = []
  deletion_protection = "false"
  activation_policy   = "ALWAYS"
  backup_enabled      = "true"

  }
]


# Cloud SQL DB #
#################################################
cloudsql_databases = [{
  name      = "tf_jobload_db"
  instance  = "tf-jobload-instance"
  collation = "utf8mb4_general_ci"
  }
]


# Cloud SQL Users #
#################################################

cloudsql_users = [{
  name     = "root"
  password = "Ey75qB7Dwyo0fa"
  instance = "tf-jobload-instance"
  host     = ""
}]





