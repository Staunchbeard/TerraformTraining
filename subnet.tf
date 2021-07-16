resource "azurerm_subnet" "BabiesFirstSubnet" {
    name = var.subnetName
    resource_group_name = azurerm_resource_group.resourcegroup1.name
    virtual_network_name = azurerm_virtual_network.BabiesFirstvNet.name
    address_prefixes = ["10.69.69.0/24"]
}