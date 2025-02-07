#general
resource_group_name = "ironhack-project"
location = "West Europe"

# network
vnet_name = "ironhack-project-vnet"

cidr_block = [ "10.0.0.0/16" ]

public_ip_address_frontend = "cteixeira_ironhackproject_frontend"
public_ip_address_backend = "cteixeira_ironhackproject_backend"

nic_frontend_name = "ironhack-project-nic-frontend"
nic_backend_name = "ironhack-project-nic-backend"

# virtual machines
diskSize = "Standard_DS1_v2"

virtual_machine_user = "azureuser"

virtual_machine_frontend_name = "frontend"
virtual_machine_backend_name = "backend"