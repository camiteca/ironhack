resource "azurerm_subnet" "backend" {
    name = "backend_subnet"
    resource_group_name = azurerm_resource_group.resource-group.name
    virtual_network_name = azurerm_virtual_network.ironhack_project_vnet.name
    address_prefixes = ["10.0.2.0/24"]
}

resource "azurerm_subnet" "frontend" {
    name = "frontend_subnet"
    resource_group_name = azurerm_resource_group.resource-group.name
    virtual_network_name = azurerm_virtual_network.ironhack_project_vnet.name
    address_prefixes = ["10.0.3.0/24"]
}