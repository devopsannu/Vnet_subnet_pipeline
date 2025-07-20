module "rg_name" {
  source = "../../Modules/Azurerm_resource_group"
  resource_groups = var.resource_groups

}

module "vnet" {
               depends_on = [ module.rg_name ]
  source = "../../Modules/Azurerm_virtual_network"
  vnet_webapp = var.vnet_webapp
  
}

module "subnet" {
               depends_on = [ module.vnet , module.rg_name ]
  source = "../../Modules/Azurerm_subnet"
  webapp_subnet = var.webapp_subnet
  
}