resource "google_vertex_ai_tensorboard" "tensorboard" {
    project = var.project_id
  display_name = "terraform"
  description  = "sample description"
  labels       = {
    "key1" : "value1",
    "key2" : "value2"
  }
  region       = var.region
  encryption_spec {
    kms_key_name = "kms-name"
  }
}