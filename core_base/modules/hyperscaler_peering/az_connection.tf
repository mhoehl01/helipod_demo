resource "azurerm_local_network_gateway" "core_lgw" {
  name                = "awsgw-hub-demo-westeu"
  resource_group_name = var.az_resource_group_name
  location            = "West Europe"
  gateway_address     = aws_vpn_connection.aws_connection.tunnel1_address
  address_space       = ["${var.aws_hub_cidr}"]
}


