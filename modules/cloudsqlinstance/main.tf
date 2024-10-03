resource "google_sql_database_instance" "default" {
  name                = var.name
  database_version    = var.database_version
  region              = var.region
  deletion_protection = var.deletion_protection
  project             = var.project

  settings {
    # Second-generation instance tiers are based on the machine
    # type. See argument reference below.
    tier              = var.tier
    activation_policy = var.activation_policy
    disk_type         = var.disk_type
    # availability_type = "REGIONAL"
    ip_configuration {

      ipv4_enabled                                  = var.ipv4_enabled
      private_network                               = var.network
      enable_private_path_for_google_cloud_services = true

      dynamic "authorized_networks" {
        for_each = var.auth_network_ip
        iterator = authip
        content {
          value = authip.value
        }
      }

    }
    backup_configuration {
      enabled = "true"

    }
  }
}
