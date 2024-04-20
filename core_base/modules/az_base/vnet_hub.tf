resource "azurerm_virtual_network" "core_hub" {
  name                = "vnet-hub-demo-westeu"
  location            = azurerm_resource_group.core_rg.location
  resource_group_name = azurerm_resource_group.core_rg.name
  address_space       = ["${var.address_space}"]

  subnet {
    name           = "Default"
    address_prefix = "10.10.0.160/28"
  }
}