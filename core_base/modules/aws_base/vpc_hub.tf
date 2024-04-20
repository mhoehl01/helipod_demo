resource "aws_vpc" "core_hub" {
  cidr_block = var.hub_cidr

  tags = {
    Name = "vpc-hub-demo-centraleu1"
    workload = "hub"
  }
}