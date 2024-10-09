module "vai_tensorboard" {
  source  = "../../modules/vai_tensorboard"
  project_id = var.project_id
  name = "tf-tensorboard"
  region = var.meta_region

}