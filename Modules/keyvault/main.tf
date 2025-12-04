# Key Vault itself
resource "azurerm_key_vault" "this" {
  name                        = var.keyvault_name
  location                    = var.location
  resource_group_name         = var.resource_group_name
  tenant_id                   = var.tenant_id
  sku_name                    = var.sku_name
  soft_delete_enabled         = true
  purge_protection_enabled    = false



  # Access policy for admin/user
  access_policy {
    tenant_id = var.tenant_id
    object_id = var.admin_object_id
    secret_permissions = [
      "get",
      "list",
      "set",
      "delete"
    ]
  }

  tags = var.tags
}
