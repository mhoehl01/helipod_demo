resource "aws_subnet" "core_gw_subnet" {
  vpc_id     = aws_vpc.core_hub.id
  cidr_block = var.gatewaysubnet_cidr

  tags = {
    Name     = "GatewaySubnet"
    workload = "hub"
  }
}

resource "aws_vpn_gateway" "core_gw" {
  vpc_id = aws_vpc.core_hub.id

  tags = {
    Name     = "gw-hub-demo-centraleu1"
    workload = "hub"
  }
}