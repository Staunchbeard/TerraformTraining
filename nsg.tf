resource "azurerm_network_security_group" "nsg1" {
    name = var.nsgName
    location = azurerm_resource_group.resourcegroup1.location
    resource_group_name = azurerm_resource_group.resourcegroup1.name
}

resource "azurerm_network_security_rule" "nsgrule1" {
    name = "Allow SSH"
    priority = 100
    direction = "Inbound"
    access = "Allow"
    protocol = "TCP"
    destination_port_range = "22"
    source_port_range = "*"
    source_address_prefix = "*"
    destination_address_prefix = "*"
    resource_group_name = azurerm_resource_group.resourcegroup1.name
    network_security_group_name = azurerm_network_security_group.nsg1.name
}

resource "azurerm_subnet_network_security_group_association" "nsg1association" {
    subnet_id = azurerm_subnet.BabiesFirstSubnet.id
    network_security_group_id = azurerm_network_security_group.nsg1.id
}