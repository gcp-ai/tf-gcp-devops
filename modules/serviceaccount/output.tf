output "service_account_id" {
  value = google_service_account.default.id
}

output "service_account_name" {
  value = google_service_account.default.name
}

output "service_account_email" {
  value = google_service_account.default.email
}

output "service_account_member" {
  value = google_service_account.default.member
}