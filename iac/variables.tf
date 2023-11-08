variable "environment" {
  description = "The deployment environment (e.g., staging, production)"
}

variable "location" {
  description = "The Azure region where resources will be created"
  default     = "West Europe"
}
