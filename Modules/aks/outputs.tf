output "kube_config" {
  description = "Raw Kubernetes config for the AKS cluster"
  value       = azurerm_kubernetes_cluster.this.kube_config_raw
  sensitive   = true
}

output "client_certificate" {
  description = "Client certificate for accessing the AKS cluster"
  value       = azurerm_kubernetes_cluster.this.kube_config[0].client_certificate
  sensitive   = true
}
