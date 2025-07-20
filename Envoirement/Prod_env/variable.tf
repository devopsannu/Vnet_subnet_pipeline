variable "resource_groups" {
  type = map(object({
    name     = string
    location = string
  }))
  default = {}
}

variable "vnet_webapp" {
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    address_space       = list(string)
  }))
  default = {}
}

variable "webapp_subnet" {
  type = map(object({
    name                 = string
    resource_group_name  = string
    virtual_network_name = string
    address_prefixes     = list(string)
  }))
  default = {}
}