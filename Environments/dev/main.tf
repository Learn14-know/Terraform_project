provider "azurerm" {
  features {}
}

locals {
  env = "dev"
}

module "aks" {
  source = "../../modules/aks"
  name = "aks-${local.env}"
  location = var.location
  resource_group_name = azurerm_resource_group.rg.name
  node_count = var.node_count
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}
