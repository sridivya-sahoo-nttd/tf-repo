# Generate a unique storage account name
locals {
  storage_account_name = var.storage_account_name != "" ? var.storage_account_name : "nttdata${random_id.storage_suffix.hex}"
}

# Generate a random suffix for storage account name
resource "random_id" "storage_suffix" {
  byte_length = 4
}

resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "example" {
  name                     = local.storage_account_name
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}