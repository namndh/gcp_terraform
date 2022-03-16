terraform {
  backend "gcs" {
    bucket = "tf-state-pegaxy-datawarehouse-infra-test"
    prefix = "state"
  }
}