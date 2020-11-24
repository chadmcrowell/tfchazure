resource "azurerm_resource_group" "resource_gp" {
  name     = "app-rg"
  location = var.location

  tags = {
    Owner = "Chad Crowell"
  }
}
