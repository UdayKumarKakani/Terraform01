# Configure the Azure provider
provider "azurerm" {
  features {}

  subscription_id = "8dd7289c-422a-4457-8929-0b68291fd6e9"
  client_id       = "a77789c7-299b-4878-96cc-ef02966ca6ed"
  client_secret   = "lMH8Q~OK5-00P04NsEZCywbgmJcGBvpEU8DMAbC4"
  tenant_id       = "0d0be429-3ecd-432d-8d42-a38d53b48d23"
}

resource "azurerm_resource_group" "aks" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.cluster_name
  location            = azurerm_resource_group.aks.location
  resource_group_name = azurerm_resource_group.aks.name
  dns_prefix          = var.dns_prefix

  default_node_pool {
    name       = "default"
    node_count = var.node_count
    vm_size    = "Standard_DS2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    network_plugin = "azure"
  }

   tags = var.tags
}


