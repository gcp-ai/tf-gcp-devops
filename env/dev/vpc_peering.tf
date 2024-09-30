
module "vpc_peering" {
  source        = "../../modules/vpc_peering"
  project       = var.project_id
  network       = module.vpc.self_link
  name          = var.vpc_peering.name
  service       = var.vpc_peering.service
  prefix_length = var.vpc_peering.prefix_length
  address_type  = var.vpc_peering.address_type
  purpose       = var.vpc_peering.purpose

  depends_on = [
    module.googleapis_servicenetworking,
    module.vpc
  ]
}

