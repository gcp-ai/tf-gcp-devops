resource "google_vertex_ai_endpoint" "default" {
  project               = var.project_id
  name = "${var.endpoint_name}-${substr(random_id.endpoint_id.dec, 0, 10)}"

  # name = concat("tf_", substr(random_id.endpoint_id.dec, 0, 10))
  
  display_name = "tf-sample-endpoint"
  description  = "A sample Vertex AI endpoint"
  location     = var.location
  region       = var.location
  labels = {
    label-one = "value-one"
  }
}

# Endpoint name must be unique for the project
resource "random_id" "endpoint_id" {
  byte_length = 4
}
