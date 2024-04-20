resource "aws_vpc" "core_hub" {
  cidr_block = var.hub_cidr

  tags = {
    workload = "hub"
  }
}