variable "keyvault_name" {
  type        = string
  description = "Name of the Azure Key Vault"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group where Key Vault will be created"
}

variable "location" {
  type        = string
  description = "Azure region where Key Vault will be created"
}

variable "tenant_id" {
  type        = string
  description = "Azure Active Directory Tenant ID for Key Vault"
}

variable "admin_object_id" {
  type        = string
  description = "Object ID of the user or service principal with full access to Key Vault"
}

variable "sku_name" {
  type        = string
  description = "SKU for the Key Vault (standard or premium)"
  default     = "standard"
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply to the Key Vault"
  default     = {}
}
