module "az_base" {
  source                       = "./modules/az_base"
  region                       = "West Europe"
  resource_group_name          = "rg-helipodcore-demo-westeu"
  hub_address_space            = "10.10.0.0/16"
  defaultsubnet_address_prefix = "10.10.0.160/28"
  gatewaysubnet_address_prefix = "10.10.0.0/26"
}

module "aws_base" {
  source              = "./modules/aws_base"
  resource_group_name = "rg-helipodcore-demo-centraleu1"
  hub_cidr            = "10.20.0.0/16"
  defaultsubnet_cidr  = "10.20.0.160/28"
  gatewaysubnet_cidr  = "10.20.0.0/26"
}

