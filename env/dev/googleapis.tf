module "googleapis_notebooks" {
  source  = "../../modules/googleapis"
  project = var.project
  service = var.googleapis.notebooks

  depends_on = [module.googleapis_serviceusage,
  module.googleapis_cloudresourcemanager]
}

module "googleapis_serviceusage" {
  source  = "../../modules/googleapis"
  project = var.project
  service = var.googleapis.serviceusage

}
module "googleapis_cloudresourcemanager" {
  source  = "../../modules/googleapis"
  project = var.project
  service = var.googleapis.cloudresourcemanager

}
module "googleapis_compute" {
  source  = "../../modules/googleapis"
  project = var.project
  service = var.googleapis.compute

    depends_on = [module.googleapis_serviceusage,
  module.googleapis_cloudresourcemanager]

}
module "googleapis_iap" {
  source  = "../../modules/googleapis"
  project = var.project
  service = var.googleapis.iap

    depends_on = [module.googleapis_serviceusage,
  module.googleapis_cloudresourcemanager]

}
module "googleapis_aiplatform" {
  source  = "../../modules/googleapis"
  project = var.project
  service = var.googleapis.aiplatform

    depends_on = [module.googleapis_serviceusage,
  module.googleapis_cloudresourcemanager]

}
module "googleapis_cloudkms" {
  source  = "../../modules/googleapis"
  project = var.project
  service = var.googleapis.cloudkms

    depends_on = [module.googleapis_serviceusage,
  module.googleapis_cloudresourcemanager]

}

module "googleapis_bigquery" {
  source  = "../../modules/googleapis"
  project = var.project
  service = var.googleapis.bigquery

    depends_on = [module.googleapis_serviceusage,
  module.googleapis_cloudresourcemanager]
}

module "googleapis_storage" {
  source  = "../../modules/googleapis"
  project = var.project
  service = var.googleapis.storage
    depends_on = [module.googleapis_serviceusage,
  module.googleapis_cloudresourcemanager]
}

module "googleapis_servicenetworking" {
  source  = "../../modules/googleapis"
  project = var.project
  service = var.googleapis.servicenetworking
    depends_on = [module.googleapis_serviceusage,
  module.googleapis_cloudresourcemanager]

}

module "googleapis_sqladmin" {
  source  = "../../modules/googleapis"
  project = var.project
  service = var.googleapis.sqladmin

    depends_on = [module.googleapis_serviceusage]

}


module "googleapis_iam" {
  source  = "../../modules/googleapis"
  project = var.project
  service = var.googleapis.iam

    depends_on = [module.googleapis_serviceusage]

}

