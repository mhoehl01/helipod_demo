variable "region" {
  type        = string
  description = "Region of all base resources"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the base resourcegroup"
}

variable "hub_address_space" {
  type        = string
  description = "Address space for hub vnet"
}

variable "defaultsubnet_address_prefix" {
  type        = string
  description = "Addressprefix for default subnet"
}

variable "gatewaysubnet_address_prefix" {
  type        = string
  description = "Addressprefix for default subnet"
}



