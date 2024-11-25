
# VPC
#################################################

variable "project" {}
variable "name" {}
variable "routing_mode" {}
variable "auto_create_subnetworks" { type = bool }
variable "create_count" {
  type    = number
  default = 1
}
variable "description" {
  type    = string
  default = "TF tf-vpc"
}