module "storage_account" {
  source = "../.."

  name                     = module.resource_names["storage_account"].minimal_random_suffix
  resource_group_name      = module.resource_group.name
  location                 = var.region
  account_tier             = "Standard"
  account_replication_type = "LRS"
  tags                     = var.tags
}