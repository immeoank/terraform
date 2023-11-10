terraform {
  backend "azurerm" {
    # Backend config here
  }
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

provider "azurerm" {
  features {}
}