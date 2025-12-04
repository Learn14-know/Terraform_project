variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}

variable "location" {
  type        = string
  description = "Azure region"
}

variable "aks_name" {
  type        = string
  description = "Name of the AKS cluster"
}

variable "dns_prefix" {
  type        = string
  description = "DNS prefix for AKS"
}

variable "node_pool_name" {
  type        = string
  description = "Name of the default node pool"
  default     = "default"
}

variable "node_count" {
  type        = number
  description = "Number of nodes in the default pool"
  default     = 1
}

variable "vm_size" {
  type        = string
  description = "VM size for the node pool"
  default     = "Standard_D2_v2"
}

variable "environment" {
  type        = string
  description = "Environment tag for resources"
}
