resource "azurerm_virtual_machine" "vm01" {
    name = var.vmName
    location = azurerm_resource_group.resourcegroup1.location
    resource_group_name = azurerm_resource_group.resourcegroup1.name
    network_interface_ids = [azurerm_network_interface.nic1.id]
    vm_size = "Standard_B1S"

    storage_image_reference {
      publisher = "Canonical"
      offer = "UbuntuServer"
      sku = "16.04-LTS"
      version = "latest"
    }
    storage_os_disk {
      name = "ew-BabiesOSDisk"
      caching = "ReadWrite"
      create_option = "FromImage"
      managed_disk_type = "Standard_LRS"
    }
    os_profile {
      computer_name = "ew-BabiesFirstVM"
      admin_username = "Localadmin"
      admin_password = "ThisIsAPassword1!"
    }
    os_profile_linux_config {
      disable_password_authentication = false
    }
    tags = var.envTags

}
output "public_ip_addr" {
    value = azurerm_public_ip.pip1.ip_address
}
output "private_ip_addr" {
    value = azurerm_network_interface.nic1.private_ip_address
}