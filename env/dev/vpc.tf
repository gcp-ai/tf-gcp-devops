module "vpc" {
  source                  = "../../modules/vpc"
  project                 = var.project_id
  name                    = var.vpc.name
  routing_mode            = var.vpc.routing_mode
  auto_create_subnetworks = var.vpc.auto_create_subnetworks

  depends_on = [
    module.googleapis_compute
  ]
}

