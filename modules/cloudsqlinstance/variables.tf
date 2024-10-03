
variable "name" {

}

// required
variable "database_version" {

}

variable "deletion_protection" {}
// required
variable "region" {

}

// Master
variable "tier" {

}

variable "project" {}
variable "auth_network_ip" {}
variable "network" {}
# variable "ip_address_name" {}
# variable "vpc_service" {}
# variable "prefix_length" {}
# variable "address_type" {}
# variable "purpose" {}
variable "create_count" {
  type    = number
  default = 1
}
variable "activation_policy" {}
variable "ipv4_enabled" {
  type    = bool
  default = false
}

variable "disk_type" {
  type    = string
  default = "PD_SSD"
}


variable "backup_enabled" {
  
}