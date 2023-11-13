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
  name                = "menu-items"
  container_access_type = "public"
  environment         = "test"
  resource_group_type = "back"
}
