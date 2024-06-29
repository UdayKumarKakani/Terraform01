variable "subscription_id" {
  description = "The Subscription ID to deploy resources into"
  type        = string
}

variable "client_id" {
  description = "The Client ID (appId) for the Service Principal"
  type        = string
}

variable "client_secret" {
  description = "The Client Secret (password) for the Service Principal"
  type        = string
  sensitive   = true
}

variable "tenant_id" {
  description = "The Tenant ID for the Service Principal"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "aks-resource-group"
}

variable "location" {
  description = "The location of the resource group"
  type        = string
  default     = "East US"
}

variable "cluster_name" {
  description = "The name of the AKS cluster"
  type        = string
  default     = "aks-cluster"
}

variable "dns_prefix" {
  description = "The DNS prefix for the AKS cluster"
  type        = string
  default     = "aks"
}

variable "node_count" {
  description = "The number of nodes in the default node pool"
  type        = number
  default     = 1
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}
