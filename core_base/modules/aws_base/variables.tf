variable "hub_cidr" {
  type        = string
  description = "Cidr of the hub vpc"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the base resourcegroup"
}

variable defaultsubnet_cidr {
  type        = string
  description = "description"
}

variable gatewaysubnet_cidr {
  type        = string
  description = "Cidr for the gateway subnet"
}


