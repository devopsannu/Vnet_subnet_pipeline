variable "vnet_webapp" {
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    address_space       = list(string)
  }))
  default = {}
}
# variable "vnet_name" {
#                type = string
#                description = "The name of the virtual network."
# }

# variable "location" {
#                type = string
#                description = "The Azure region where the virtual network will be created."
  
# }
# variable "address_space" {
#                type = list(string)
#                description = "The address space for the virtual network."
# }
