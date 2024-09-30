
variable "project_id" {
  description = "The ID of the project in which the resource belongs"
  type        = string
}

variable "workbench_name" {
  description = "The name of the workbench instance in which the resource belongs"
  type        = string
}

variable "location" {
  description = "The location of workbench instance in which the resource belongs"
  type        = string  
}

variable "role" {}

variable "members" {
  description = "Service account member to allocate role"
  type        = list(string)
}

