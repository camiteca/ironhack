resource "azurerm_virtual_network" "ironhack_project_vnet" {
  name                = var.vnet_name
  address_space       = var.cidr_block
  location            = var.location
  resource_group_name = azurerm_resource_group.resource-group.name
}