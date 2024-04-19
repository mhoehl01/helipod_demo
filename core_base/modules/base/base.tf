resource "azurerm_resource_group" "base_az_rg" {
  name     = var.resource_group_name
  location = var.region
}