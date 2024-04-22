resource "aws_vpn_gateway" "core_gw" {
  vpc_id = aws_vpc.core_hub.id

  tags = {
    Name = "gw-hub-demo-centraleu1"
    workload = "hub"
  }
}