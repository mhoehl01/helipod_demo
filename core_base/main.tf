module "az_base" {
  source                       = "./modules/az_base"
  hub_address_space            = "10.10.0.0/16"
  defaultsubnet_address_prefix = "10.10.0.160/28"
  gatewaysubnet_address_prefix = "10.10.0.0/26"
}

module "aws_base" {
  source             = "./modules/aws_base"
  hub_cidr           = "10.20.0.0/16"
  defaultsubnet_cidr = "10.20.0.160/28"
  gatewaysubnet_cidr = "10.20.0.0/26"
}

module "hyperscaler_peering" {
  source                 = "./modules/hyperscaler_peering"
  az_pubip               = module.az_base.core_gw_pubip
  aws_gateway_id         = module.aws_base.gateway_id
  az_resource_group_name = module.az_base.resource_group_name
  aws_hub_cidr           = module.aws_base.hub_cidr
}


