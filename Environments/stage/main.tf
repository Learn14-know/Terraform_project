module "aks" {
  source = "../../modules/aks"

  resource_group_name = var.resource_group_name
  location            = var.location
  aks_name            = var.aks_name
  dns_prefix          = var.dns_prefix
  node_count          = var.node_count
  vm_size             = var.vm_size
  environment         = "stage"  # fixed here
}
