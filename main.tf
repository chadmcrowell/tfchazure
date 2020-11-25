provider "azurerm" {
  version = "2.35.0"
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "remotestate-rg"
    storage_account_name = "tfchazuregithubactions"
    container_name       = "terraform-state"
    key                  = "terraform.tfstate"
  }
}

resource "azurerm_resource_group" "resource_gp" {
  name     = "app-rg"
  location = "southcentralus"
}
