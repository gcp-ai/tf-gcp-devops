output "sqldb_private_ip" {
  value = google_sql_database_instance.default.private_ip_address
}
output "public_ip_address" {
  value = google_sql_database_instance.default.public_ip_address
}

output "service_account_email_address" {
  value = google_sql_database_instance.default.service_account_email_address
}