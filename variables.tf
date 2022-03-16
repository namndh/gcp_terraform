variable "project_id" {
  description = "project id in GCP"
}

variable "region" {
  description = "region of project in GCP"
}

variable "data_fusion_labels" {
  description = "The resouce labels for instance to use to annotate any related underlying resources, such as Compute Engine VMs"
  type = map(string)
  default = {}
}

variable "data_fusion_options" {
  description = "Map of additional options used to configure the behavior of Data Fusion instance"
  type = map(string)
  default = {}
}


variable "data_fusion_labels" {
  description = "The resouce labels for instance to use to annotate any related underlying resources, such as Compute Engine VMs"
  type = map(string)
  default = {}
}