resource "azurerm_resource_group" "resourcegroup1" {
  name     = var.resourcegroupName
  location = var.resourcegroupLocation
  tags     = var.envTags
}