provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

module "aks" {
  source = "../../modules/aks"
  name = "aks-${var.env}"
  location = var.location
  resource_group_name = azurerm_resource_group.rg.name
  node_count = var.node_count
}
