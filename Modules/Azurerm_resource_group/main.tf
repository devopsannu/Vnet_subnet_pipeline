resource "azurerm_resource_group" "rg-webapp" {
  for_each = var.resource_groups
  name     = each.value.name
  location = each.value.location
}

