resource "azurerm_local_network_gateway" "core_lgw" {
  name                = "awsgw-hub-demo-westeu"
  resource_group_name = var.az_resource_group_name
  location            = var.az_region
  gateway_address     = aws_vpn_connection.aws_connection.tunnel1_address
  address_space       = ["${var.aws_hub_cidr}"]
}

resource "azurerm_virtual_network_gateway_connection" "az_connection" {
  name                = "awsvpn-hub-demo-westeu"
  location            = var.az_region
  resource_group_name = var.az_resource_group_name

  type                       = "IPsec"
  virtual_network_gateway_id = var.az_gateway_id
  local_network_gateway_id   = azurerm_local_network_gateway.core_lgw.id

  shared_key = "4-v3ry-53cr37-1p53c-5h4r3d-k3y"
}


