variable "project_id" {
  description = "project id"
}

variable "region" {
  description = "region"
}

# VPC
resource "google_compute_network" "vpc" {
  name                    = "${var.project_id}-vpc"
  auto_create_subnetworks = "false"
}

# Subnet
resource "google_compute_subnetwork" "subnet" {
  name          = "${var.project_id}-subnet"
  region        = var.region
  network       = google_compute_network.vpc.name
  ip_cidr_range = "10.10.0.0/24"
}

resource "google_compute_global_address" "data_fusion_private_ip_alloc" {
  project = var.project_id
  name = "data-fusion-private-ip-alloc"
  purpose = "VPC_PEERING"
  address_type = "INTERNAL"
  prefix_length = 22
  network = module.vpc.network_self_link
}
