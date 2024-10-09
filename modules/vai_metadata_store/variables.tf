
variable "project_id" {
  description = "The ID of the project in which the resource belongs"
  type        = string
}
variable "region" {}

variable "name" {}

variable "description" {
  type = string
  default = "Store to test the terraform module"
}

