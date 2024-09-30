resource "google_compute_network" "default" {
  name                    = var.name
  project                 = var.project
  routing_mode            = var.routing_mode
  auto_create_subnetworks = var.auto_create_subnetworks
  description             = var.description
}

