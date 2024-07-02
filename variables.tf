variable "client_id" {
  type        = string
  description = "The Client ID (appId) of the service principal."
}

variable "client_secret" {
  type        = string
  description = "The Client Secret (password) of the service principal."
}

variable "tenant_id" {
  type        = string
  description = "The Tenant ID of the service principal."
}

variable "subscription_id" {
  type        = string
  description = "The Subscription ID for Azure."
}

variable "location" {
  type        = string
  description = "The Azure region where the AKS cluster should be created."
  default     = "westus2"
}

variable "cluster_name" {
  type        = string
  description = "The name of the AKS cluster."
  default     = "aks-cluster"
}

variable "dns_prefix" {
  type        = string
  description = "The DNS prefix to use for the AKS cluster."
  default     = "aksdns"
}

variable "node_count" {
  type        = number
  description = "The number of nodes in the default node pool."
  default     = 3
}

variable "node_vm_size" {
  type        = string
  description = "The size of the VM for the nodes in the default node pool."
  default     = "Standard_DS2_v2"
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply to resources."
  default     = {
    environment = "Development"
  }
}
