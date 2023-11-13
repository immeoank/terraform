resource "azurerm_storage_account" "sa" {
  name                     = "sc${var.environment}${var.storage_account_name}sa"
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  tags = {
    Environment = var.environment
  }
}

resource "azurerm_storage_container" "sa" {
  name                  = "${var.container_name}${var.environment}"
  storage_account_name  = azurerm_storage_account.sa.name
  container_access_type = "${var.container_access_type}"
}


