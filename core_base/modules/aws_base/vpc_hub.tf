resource "aws_vpc" "main" {
  cidr_block = var.hub_cidr
}