provider "azurerm" {
  subscription_id = var.subscriptionId
  tenant_id       = var.tenantId
  client_id       = var.clientId
  client_secret   = var.clientSecret
  
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "darius522bce"
  location = "Central US"
}

module "network" {
  source              = "Azure/network/azurerm"
  resource_group_name = azurerm_resource_group.example.name
  address_space       = "10.0.0.0/16"
  subnet_prefixes     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  subnet_names        = ["subnet1", "subnet2", "subnet3"]

  tags = {
    environment = "dev"
    costcenter  = "it"
  }
}
