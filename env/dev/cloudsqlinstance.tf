module "cloudsqlinstance" {
  source           = "../../modules/cloudsqlinstance"
  project          = var.project_id
  name             = var.cloudsql_instances[0].name
  database_version = var.cloudsql_instances[0].database_version
  region           = var.meta_region
  tier             = var.cloudsql_instances[0].tier
  auth_network_ip  = var.cloudsql_instances[0].auth_network_ip
  network          = module.vpc.self_link

  deletion_protection = var.cloudsql_instances[0].deletion_protection
  activation_policy   = var.cloudsql_instances[0].activation_policy
  depends_on = [
    module.vpc, module.vpc_peering,
    module.googleapis_sqladmin
  ]
}


