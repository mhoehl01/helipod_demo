resource "aws_customer_gateway" "az_gateway_object" {
  bgp_asn    = 65000
  ip_address = var.az_pubip
  type       = "ipsec.1"

  tags = {
    Name = "azgw-hub-demo-centraleu1"
    workload = "hub"
  }
}