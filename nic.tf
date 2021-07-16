resource "azurerm_network_interface" "nic1" {
    name = var.nicName
    location = azurerm_resource_group.resourcegroup1.location
    resource_group_name = azurerm_resource_group.resourcegroup1.name

    ip_configuration {
      name = "LAN"
      subnet_id = azurerm_subnet.BabiesFirstSubnet.id
      private_ip_address_allocation = "Dynamic"
      public_ip_address_id = azurerm_public_ip.pip1.id
    }
}