variable "project" {
  description = "The project ID to deploy to."
  type = string
}

variable "region" {
    description = "The region of the instances"
    type = string
}


variable "type" {
  description = "Represents the type of the instance (BASIC or ENTERPRISE)"
  type = string
  default = "ENTERPRISE"
}

variable "labels" {
  description = "The resouce labels for instance to use to annotate any related underlying resources, such as Compute Engine VMs"
  type = map(string)
  default = {}
}

variable "options" {
  description = "Map of additional options used to configure the behavior of Data Fusion instance"
  type = map(string)
  default = {}
}

variable "network_config" {
  description = "Network configuration options as defined in https://www.terraform.io/docs/providers/google/r/data_fusion_instance.html#network_config. Setting this implies a private instance."
  type = object({
      network = string
      ip_allocation = string
  })
  default = null
}