resource "azurerm_resource_group" "core_rg" {
  name     = var.resource_group_name
  location = var.region
}