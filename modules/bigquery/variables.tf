variable "dataset_id" {}
variable "friendly_name" {}
variable "description" {}
variable "location" {}
variable "project" {
  description = "The ID of the project in which the resource belongs"
  type        = string
}
variable "max_time_travel_hours" {
  type    = number
  default = 168
}
variable "create_count" {
  type    = number
  default = 1
}
variable "delete_contents_on_destroy" {}
variable "default_table_expiration_ms" {}

variable "table_id" {}