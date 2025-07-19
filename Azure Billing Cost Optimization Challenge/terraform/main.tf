resource "azurerm_resource_group" "main" {
  name     = "billing-rg"
  location = "East US"
}

resource "azurerm_storage_account" "billing_archive" {
  name                     = "billingarchivestore"
  resource_group_name      = azurerm_resource_group.main.name
  location                 = azurerm_resource_group.main.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_cosmosdb_account" "billing_cosmos" {
  name                = "billingcosmos"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  offer_type          = "Standard"
  kind                = "GlobalDocumentDB"
  consistency_policy {
    consistency_level = "Session"
  }
}
