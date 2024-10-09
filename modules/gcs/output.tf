# output "self_link" {
#   # value = google_storage_bucket.default.self_link
#   value =join("", google_storage_bucket.default[count.index].self_link)
# }