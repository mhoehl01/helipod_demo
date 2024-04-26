variable "az_region" {
  type = string
}

variable "az_pubip" {
  type        = string
  description = "Public IP of azure gateway"
}

variable "az_resource_group_name" {
  type        = string
  description = "Name of az resource group"
}

variable "az_gateway_id" {
  type        = string
  description = "Id of az gateway"
}

variable "az_hub_address_space" {
  type        = string
  description = "Address space of the az hub"
}

variable "aws_gateway_id" {
  type        = string
  description = "Id of aws gateway"
}

variable "aws_hub_cidr" {
  type        = string
  description = "Cidr of aws hub"
}


