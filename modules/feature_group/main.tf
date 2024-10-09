resource "google_vertex_ai_feature_group" "feature_group" {
  project = var.project_id
  name = var.name
  description = var.description
  region = var.region
  labels = {
      label-one = var.label-one
  }
  big_query {
    big_query_source {
        # The source table must have a column named 'feature_timestamp' of type TIMESTAMP.
        input_uri = var.input_uri
    }
    entity_id_columns = [var.entity_id_column]
  }
}