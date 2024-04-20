module "az_base" {
  source              = "./modules/az_base"
  region              = "West Europe"
  resource_group_name = "rg-helipodcore-demo-westeu"
  address_space       = "10.10.0.0/16"
}

module "aws_base" {
  source              = "./modules/aws_base"
  resource_group_name = "rg-helipodcore-demo-centraleu1"
  hub_cidr            = "10.20.0.0/16"
}

