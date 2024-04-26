resource "azurerm_virtual_network" "core_hub" {
  name                = "vnet-hub-demo-westeu"
  location            = azurerm_resource_group.core_rg.location
  resource_group_name = azurerm_resource_group.core_rg.name
  address_space       = ["${var.hub_address_space}"]
}

resource "azurerm_subnet" "core_default_subnet" {
  name                 = "DefaultSubnet"
  resource_group_name  = azurerm_resource_group.core_rg.name
  virtual_network_name = azurerm_virtual_network.core_hub.name
  address_prefixes     = ["${var.defaultsubnet_address_prefix}"]
}