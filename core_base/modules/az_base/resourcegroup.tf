resource "azurerm_resource_group" "core_rg" {
  name     = "rg-helipodcore-demo-westeu"
  location = var.az_region
}