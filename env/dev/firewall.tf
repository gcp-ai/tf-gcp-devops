# module "firewall" {
#   source       = "../../modules/firewall"
#   project_id   = var.project_id
#   network_name = module.vpc.name

#   rules = var.fw_rules

#   depends_on = [
#     module.vpc
#   ]
# }



