variable "name" {}
variable "location" {}
variable "resource_group_name" {}
variable "node_count" { default = 1 }
variable "node_vm_size" { default = "Standard_D2s_v3" }

resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.name

  default_node_pool {
    name       = "agentpool"
    node_count = var.node_count
    vm_size    = var.node_vm_size
  }

  identity {
    type = "SystemAssigned"
  }

  role_based_access_control {
    enabled = true
  }

  lifecycle {
    ignore_changes = [default_node_pool[0].node_count] # optional
  }
}

output "kube_admin_config_raw" {
  value     = azurerm_kubernetes_cluster.aks.kube_admin_config_raw
  sensitive = true
}
