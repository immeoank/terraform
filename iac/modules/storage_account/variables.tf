variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The Azure region to deploy the storage account"
  type        = string
}

variable "environment" {
  description = "The deployment environment (e.g., dev, test, prod)"
  type        = string
}

variable "resource_group_type" {
  description = "The type of the resource group (front or back)"
  type        = string
}

variable "account_tier" {
  description = "Defines the Tier to use for this storage account. (e.g., Standard)"
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "Defines the type of replication to use for this storage account. (e.g., LRS, GRS, RAGRS)"
  type        = string
  default     = "LRS"
}
