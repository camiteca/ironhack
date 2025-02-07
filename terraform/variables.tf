variable "resource_group_name" {
    type = string
    description = "This variable holds the value of the resource group name"
}
 
variable "location" {
    type = string
    description = "This variable holds the value of the location"
    default = "West Europe"
}
 
# network

variable "vnet_name" {
    type = string
    description = "This variable holds the value of the virtual network name"
}

variable nic_frontend_name {
    type = string
    description = "This variable holds the value of the network interface name"
}

variable nic_backend_name {
    type = string
    description = "This variable holds the value of the network interface name"
}

variable "cidr_block" {
    type = list(string)
    default = ["10.0.0.0/16"]
}

variable "public_ip_address_backend" {
  type = string
}

variable "public_ip_address_frontend" {
  type = string
}

# virtual machines

variable diskSize {
    type = string
}

variable virtual_machine_user {
    type = string
}

variable virtual_machine_frontend_name{
    type = string
}

variable virtual_machine_backend_name{
    type = string
}