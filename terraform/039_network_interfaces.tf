# frontend network interface
resource "azurerm_network_interface" "frontend_nic" {
  name                = var.nic_frontend_name
  location            = var.location
  resource_group_name = azurerm_resource_group.resource-group.name
 
  ip_configuration {
    name                          = "ip_configuration_frontend"
    subnet_id                     = azurerm_subnet.frontend.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.frontend_public_ip.id
  }
}

# Connect the security group to the network interface
resource "azurerm_network_interface_security_group_association" "nic_ssh_frontend" {
  network_interface_id      = azurerm_network_interface.frontend_nic.id
  network_security_group_id = azurerm_network_security_group.frontend_nsg.id
}

# backend network interface

resource "azurerm_network_interface" "backend_nic" {
  name                = var.nic_backend_name
  location            = var.location
  resource_group_name = azurerm_resource_group.resource-group.name
 
  ip_configuration {
    name                          = "ip_configuration_backend"
    subnet_id                     = azurerm_subnet.backend.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.backend_public_ip.id
  }
}

# Connect the security group to the network interface
resource "azurerm_network_interface_security_group_association" "nic_ssh_backend" {
  network_interface_id      = azurerm_network_interface.backend_nic.id
  network_security_group_id = azurerm_network_security_group.frontend_nsg.id
}