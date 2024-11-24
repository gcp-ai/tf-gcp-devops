terraform {
<<<<<<< HEAD
  required_version = "~> 1.9.6"
=======
  required_version = "~> 1.9.8"
>>>>>>> c8d8fa719568955644560262f5507d13e9b512e2
}

provider "google" {
  # project = var.meta_project_id
  # region  = var.meta_region
}

provider "google-beta" {
  # project = var.meta_project_id
  region = var.meta_region
}

