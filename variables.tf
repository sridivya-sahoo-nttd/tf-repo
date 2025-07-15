variable "environment" {
  description = "The environment name"
  type        = string
  default     = "public"
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "example-resources"
}

variable "location" {
  description = "The Azure region"
  type        = string
  default     = "East US"
}

variable "storage_account_name" {
  description = "The name of the storage account (must be globally unique)"
  type        = string
  default     = ""
  
}
