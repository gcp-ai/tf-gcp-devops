module "cloudsqluser" {
  source  = "../../modules/cloudsqluser"
  project = var.project_id

  name     = var.cloudsql_users[0].name
  instance = var.cloudsql_users[0].instance
  host     = var.cloudsql_users[0].host
  password = var.cloudsql_users[0].password

  depends_on = [
    module.cloudsqlinstance
  ]
}

