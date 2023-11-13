terraform {
  backend "azurerm" {
    # Backend config here
  }
}

provider "azurerm" {
  features {}
}

module "frontend_rg" {
  source   = "./modules/resource_group"
  name     = "sascargo-${var.environment}-web-frontend-rg"
  location = var.location
}

module "backend_rg" {
  source   = "./modules/resource_group"
  name     = "sascargo-${var.environment}-web-backend-rg"
  location = var.location
}

module "storage_account_back" {
  source              = "./modules/storage_account"
  resource_group_name = module.backend_rg.name
  location            = module.backend_rg.location
  container_name      = "menuitems"
  storage_account_name = "sitecore"
  container_access_type = "blob"
  environment         = "test"
}
