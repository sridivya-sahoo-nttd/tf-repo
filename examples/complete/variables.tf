variable "environment" {
  description = "The Azure Cloud environment (public, usgovernment, china, german)"
  type        = string
  default     = "public"
  validation {
    condition = contains(["public", "usgovernment", "china", "german"], var.environment)
    error_message = "Environment must be one of: public, usgovernment, china, german."
  }
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
  validation {
    condition = can(regex("^[a-z0-9]{3,24}$", var.storage_account_name)) || var.storage_account_name == ""
    error_message = "Storage account name must be between 3 and 24 characters, contain only lowercase letters and numbers."
  }
}
