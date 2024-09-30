
variable "project_id" {
  description = "The ID of the project in which the resource belongs"
  type        = string
}

variable "endpoint_name" {
  description = "The name of the endpoint in which the resource belongs"
  type        = string
}

variable "location" {
  description = "The location of endpoint in which the resource belongs"
  type        = string  
}

variable "role" {}

variable "members" {
  description = "Service account member to allocate role"
  type        = string
}

