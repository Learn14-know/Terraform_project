# environments/dev/backend.tf
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.0.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "tfstate-rg"
    storage_account_name = "shreyastorage123456789"
    container_name       = "container1"
    key                  = "state.tfstate"
  }
}
