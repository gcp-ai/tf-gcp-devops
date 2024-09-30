module "serviceaccount" {
  source = "../../modules/serviceaccount"
  project            = var.project_id
  service_account_id = var.serviceaccount.sa_service_account_id
  display_name       = var.serviceaccount.display_name

  depends_on = [ module.googleapis_iam ]
}