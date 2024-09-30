
variable "project_id" {
  description = "The ID of the project in which the resource belongs"
  type        = string
}

variable "name" {
  description = "The name of the workbench instance in which the resource belongs"
  type        = string
}

variable "location" {
  description = "The location of workbench instance in which the resource belongs"
  type        = string  
}

variable "role" {}

variable "member" {
  description = "Service account member to allocate role"
  type        = string
}

