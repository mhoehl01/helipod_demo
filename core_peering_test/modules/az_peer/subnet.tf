data "azurerm_subnet" "hub_default" {
  name                 = var.subnet_name
  virtual_network_name = var.hub_name
  resource_group_name  = var.resource_group_name
}