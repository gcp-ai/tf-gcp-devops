resource "google_compute_global_address" "private_ip_address" {
  provider      = google-beta
  count         = var.create_count
  project       = var.project
  name          = var.name
  purpose       = var.purpose
  address_type  = var.address_type
  prefix_length = var.prefix_length
  network       = var.network
}

resource "google_service_networking_connection" "private_vpc_connection" {
  provider = google-beta

  network                 = var.network
  service                 = var.service
  reserved_peering_ranges = [google_compute_global_address.private_ip_address[0].name]
}
