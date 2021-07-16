resource "azurerm_public_ip" "pip1" {
    name = var.pipName
    resource_group_name = azurerm_resource_group.resourcegroup1.name
    location = azurerm_resource_group.resourcegroup1.location
    allocation_method = "Dynamic"
    tags = var.envTags
}