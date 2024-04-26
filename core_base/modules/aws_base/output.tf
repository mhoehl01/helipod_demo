output gateway_id {
  value       = aws_vpn_gateway.core_gw.id
  description = "Id of the aws vpn gateway"
}

output hub_cidr {
  value       = aws_vpc.core_hub.cidr_block
  description = "Cidr of the hub vpc"
}

