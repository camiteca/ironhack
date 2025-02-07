resource "azurerm_public_ip" "frontend_public_ip" {
  name                = var.public_ip_address_frontend
  location            = var.location
  resource_group_name = azurerm_resource_group.resource-group.name
  allocation_method   = "Dynamic"
}

resource "azurerm_public_ip" "backend_public_ip" {
  name                = var.public_ip_address_backend
  location            = var.location
  resource_group_name = azurerm_resource_group.resource-group.name
  allocation_method   = "Dynamic"
}