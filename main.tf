module "vpc" {
  source     = "./vpc"
  project_id = var.project_id
  region     = var.region
}

module "test_data_fusion" {
  source = "./data_fusion"
  project_id = var.project_id
  region = var.region

}