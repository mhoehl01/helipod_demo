module "az_peer" {
  source = "./modules/az_peer"

  subnet_name         = "DefaultSubnet"
  hub_name            = "vnet-hub-demo-westeu"
  resource_group_name = "rg-helipodcore-demo-westeu"
}