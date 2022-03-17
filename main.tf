module "vpc" {
  source     = "./modules/vpc"
  project_id = var.project_id
  region     = var.region
}


module "test_data_fusion" {
  source = "./modules/data_fusion"
  project_id = var.project_id
  region = var.region
  description = var.description
  type = var.type
  labels = var.labels
  options = var.options
  network_config = {
    network = module.vpc.network_name
    ip_allocation = module.vpc.data_fusion_ip_allocation
  }
}