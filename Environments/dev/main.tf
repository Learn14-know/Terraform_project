module "aks" {
  source = "../../modules/aks"

  resource_group_name = var.resource_group_name
  location            = var.location
  aks_name            = var.aks_name
  dns_prefix          = var.dns_prefix
  node_count          = var.node_count
  vm_size             = var.vm_size
  environment         = "dev"  # fixed for this environment
  keyvault_id         = module.keyvault.keyvault_id  # pass Key Vault reference
}

module "keyvault" {
  source              = "../../modules/keyvault"
  keyvault_name       = "kv"
  resource_group_name = var.resource_group_name
  location            = var.location
  tenant_id           = var.tenant_id
  spn_client_id       = var.spn_client_id
  spn_client_secret   = var.spn_client_secret
  spn_object_id       = var.spn_object_id
  admin_object_id     = var.admin_object_id
  tags = {
    Environment = "dev"
  }
}

