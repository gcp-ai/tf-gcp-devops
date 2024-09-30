module "workbench_instance" {
  source = "../../modules/workbench_instance"

  name       = var.workbench_instance_name
  location   = var.meta_zone
  project_id = var.project_id

  machine_type = var.workbench_machine_type
  desired_state = "ACTIVE"




  labels = {
    env  = "test"
    type = "workbench"
  }

  service_accounts = [
    {
      email = "740598741341-compute@developer.gserviceaccount.com"
    },
  ]

  data_disks = [
    {
      disk_size_gb = 100
      disk_type    = "PD_STANDARD"
    },
  ]

  network_interfaces = [
    {
      network = module.vpc.id
      #   subnet   = module.vpc.subnets_ids[0]
      nic_type = "GVNIC"
    }
  ]

  depends_on = [
    module.googleapis_notebooks,
    module.vpc
  ]
}
