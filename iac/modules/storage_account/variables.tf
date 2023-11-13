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

variable "container_access_type" {
  description = "The access level assigned to the storage container"
  type        = string
  default     = "private" # Set the default to private if no value is specified
}


variable "name" {
  description = "The name of the storage container"
  type        = string
}

