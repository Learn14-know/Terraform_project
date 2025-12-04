terraform {
  backend "azurerm" {
    resource_group_name  = "RG"
    storage_account_name = "shreyastorage123456789"
    container_name       = "terracontainer"
    key                  = "dev.tfstate"   # change to stage.tfstate in stage folder
  }
}
