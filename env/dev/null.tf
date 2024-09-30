resource "time_sleep" "wait_30_seconds" {
  create_duration = "30s"
}
resource "time_sleep" "wait_120_seconds" {
  create_duration = "120s"
}

resource "time_sleep" "wait_180_seconds" {
  create_duration = "60s"
}


# This resource will create (at least) 30 seconds after null_resource.previous
#resource "null_resource" "next" {
#  depends_on = [time_sleep.wait_30_seconds]
#}