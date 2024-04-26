variable "az_region" {
  type = string
}

variable "az_pubip" {
  type        = string
  description = "Public IP of azure gateway"
}

variable "aws_gateway_id" {
  type        = string
  description = "Id of aws gateway"
}

variable "az_resource_group_name" {
  type        = string
  description = "description"
}

variable "aws_hub_cidr" {
  type        = string
  description = "Cidr of aws hub"
}


