resource "azurerm_virtual_network" "core_hub" {
  name                = "vnet-hub-demo-westeu"
  location            = azurerm_resource_group.core_rg.location
  resource_group_name = azurerm_resource_group.core_rg.name
  address_space       = ["10.0.0.0/16"]

  subnet {
    name           = "default"
    address_prefix = "10.0.1.0/24"
  }
}