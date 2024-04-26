resource "aws_customer_gateway" "core_cgw" {
  bgp_asn    = 65000
  ip_address = var.az_pubip
  type       = "ipsec.1"

  tags = {
    Name     = "azgw-hub-demo-centraleu1"
    workload = "hub"
  }
}

resource "aws_vpn_connection" "aws_connection" {
  vpn_gateway_id      = var.aws_gateway_id
  customer_gateway_id = aws_customer_gateway.core_cgw.id
  type                = "ipsec.1"
  static_routes_only  = true

  tags = {
    Name     = "azvpn-hub-demo-centraleu1"
    workload = "hub"
  }
}