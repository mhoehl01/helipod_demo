resource "aws_vpc" "core_hub" {
  cidr_block = var.hub_cidr

  tags = {
    Name = "vpc-hub-demo-centraleu1"
    workload = "hub"
  }
}

resource "aws_subnet" "core_default_subnet" {
  vpc_id     = aws_vpc.core_hub.id
  cidr_block = var.defaultsubnet_cidr

  tags = {
    Name = "DefaultSubnet"
    workload = "hub"
  }
}