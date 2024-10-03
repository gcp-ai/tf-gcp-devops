# module "cloudsqldb" {
#   source    = "../../modules/cloudsql"
#   for_each  = { for i, v in var.cloudsql_databases : i => v }
#   project   = var.project_id
#   name      = each.value.name
#   instance  = each.value.instance
#   collation = each.value.collation

#   depends_on = [
#     module.cloudsqlinstance
#   ]
# }



