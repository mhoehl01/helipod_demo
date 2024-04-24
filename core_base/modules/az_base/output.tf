data "azurerm_public_ip" "data_core_gw_pubip" {
  name                = azurerm_public_ip.core_gw_pubip.name
  resource_group_name = azurerm_public_ip.core_gw_pubip.resource_group_name
  depends_on = [
    azurerm_virtual_network_gateway.core_gw
  ]
}

output core_gw_pubip {
  value       = data.azurerm_public_ip.data_core_gw_pubip.ip_address
  description = "Public ip of the azure vpn gateway"
}
