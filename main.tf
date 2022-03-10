terraform {
  backend "gcs" {
    bucket = "tf-state-pegaxy-datawarehouse-infra-test"
    prefix = "state"
  }
}

variable "project_id" {
  description = "project id in GCP"
}

variable "region" {
  description = "region of project in GCP"
}

provider "google" {
  project = var.project_id
  region  = var.region
}

module "vpc" {
  source = "./vpc"
  project_id = "${var.project_id}"
  region = "${var.region}"
}