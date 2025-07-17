data "azurerm_key_vault" "kvblock" {
  name                = "kv-dev-0001a"
  resource_group_name = "rg-dev-0001a"
}

data "azurerm_key_vault_secret" "kvsecretblock" {
name = "server-admin"
key_vault_id = data.azurerm_key_vault.kvblock.id
}

data "azurerm_key_vault_secret" "kvsecretblock2" {
name = "server-password"
key_vault_id = data.azurerm_key_vault.kvblock.id
}