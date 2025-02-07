#frontend virtual machine

resource "azurerm_linux_virtual_machine" "frontend_vm" {
  name                  = var.virtual_machine_frontend_name
  location              = var.location
  resource_group_name   = azurerm_resource_group.resource-group.name
  network_interface_ids = [azurerm_network_interface.frontend_nic.id]
  size                  = var.diskSize
 
  os_disk {
    name                 = "${var.virtual_machine_frontend_name}_os_disk"
    caching              = "ReadWrite"
    storage_account_type = "Premium_LRS"
  }
 
  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
 
  computer_name = "frontendvm"
  admin_username = var.virtual_machine_user
  disable_password_authentication = true
 
  admin_ssh_key {
    username   = "azureuser"
    public_key = tls_private_key.vm_ssh.public_key_openssh
  }
}

output "frontendvm_publicip" { 
  value = azurerm_public_ip.frontend_public_ip.ip_address
}

# backend virtual machine

resource "azurerm_linux_virtual_machine" "backend_vm" {
  name                  = var.virtual_machine_backend_name
  location              = var.location
  resource_group_name   = azurerm_resource_group.resource-group.name
  network_interface_ids = [azurerm_network_interface.backend_nic.id]
  size                  = var.diskSize
 
  os_disk {
    name                 = "${var.virtual_machine_backend_name}_os_disk"
    caching              = "ReadWrite"
    storage_account_type = "Premium_LRS"
  }
 
  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
 
  computer_name = "frontendvm"
  admin_username = var.virtual_machine_user
  disable_password_authentication = true
 
  admin_ssh_key {
    username   = "azureuser"
    public_key = tls_private_key.vm_ssh.public_key_openssh
  }
}

output "backendvm_publicip" { 
  value = azurerm_public_ip.backend_public_ip.ip_address
}