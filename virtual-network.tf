resource "azurerm_virtual_network" "BabiesFirstvNet" {
    name = var.virtualnetworkName
    location = azurerm_resource_group.resourcegroup1.location
    resource_group_name = azurerm_resource_group.resourcegroup1.name
    address_space = ["10.0.0.0/16"]
    dns_servers = ["8.8.8.8", "1.1.1.1"]
    tags = var.envTags
}