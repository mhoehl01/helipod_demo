resource "azurerm_public_ip" "core_gw_pubip" {
  name                = "pubip-hub-demo-westeu"
  location            = azurerm_resource_group.core_rg.location
  resource_group_name = azurerm_resource_group.core_rg.name

  allocation_method = "Dynamic"
}

resource "azurerm_subnet" "core_gw_subnet" {
  name                 = "GatewaySubnet"
  resource_group_name  = azurerm_resource_group.core_rg.name
  virtual_network_name = azurerm_virtual_network.core_hub.name
  address_prefixes     = ["10.10.0.0/26"]
}

resource "azurerm_virtual_network_gateway" "core_gw" {
  name                = "gw-hub-demo-westeu"
  location            = azurerm_resource_group.core_rg.location
  resource_group_name = azurerm_resource_group.core_rg.name

  type     = "Vpn"
  vpn_type = "RouteBased"

  active_active = false
  enable_bgp    = false
  sku           = "Basic"

  ip_configuration {
    name                          = "vnetGatewayConfig"
    public_ip_address_id          = azurerm_public_ip.core_gw_pubip.id
    private_ip_address_allocation = "Dynamic"
    subnet_id                     = azurerm_subnet.core_gw_subnet.id
  }
}