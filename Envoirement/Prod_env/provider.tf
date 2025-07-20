terraform {
               required_version = ">=1.10.0"
               backend "azurerm" {
                 resource_group_name  = "rg-sumit1"
                 storage_account_name = "stgsumit2112"
                 container_name       = "sumitcont212"
                 key                  = "prod.tfstate"
                 access_key = "KKy9P0sFR7avgWKms9YA9AqorEIpGIHdCT8oMSwblg12Au4Sc5kFnQgSLZjK2zc72Vn0Inc1xlcN+ASt15l+SQ=="
               }
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.37.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "193a80b5-b916-4c17-b06d-cfc310d07a2c"
}