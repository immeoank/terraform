resource "azurerm_storage_account" "sa" {
  name                     = "sc${var.environment}${var.resource_group_type}sa"
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  tags = {
    Environment = var.environment
  }
}

resource "azurerm_storage_container" "sa" {
  name                  = "container${var.resource_group_type}${var.environment}"
  storage_account_name  = azurerm_storage_account.sa.name
  container_access_type = "private"
}


