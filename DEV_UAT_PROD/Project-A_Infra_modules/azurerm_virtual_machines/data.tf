data "azurerm_public_ip" "datapip1" {
    name = "mytodofrontendpip"
    resource_group_name = "rg-dev-0001"
}

data "azurerm_public_ip" "datapip2" {
    name = "mytodobackendpip"
    resource_group_name = "rg-dev-0001"
}

data "azurerm_key_vault" "datakvblock1" {
    name = "kv-dev-0001a"
    resource_group_name = "rg-dev-0001a"
}

data "azurerm_key_vault_secret" "datakvsecretblock1" {
    key_vault_id = data.azurerm_key_vault.datakvblock1.id
    name = "server-admin"
}

data "azurerm_key_vault_secret" "datakvsecretblock2" {
    key_vault_id = data.azurerm_key_vault.datakvblock1.id
    name = "server-password"
}

data "azurerm_subnet" "datasubnetblock1" {
    resource_group_name = "rg-dev-0001"
    name = "subnet-dev-frontend-1"
    virtual_network_name = "vnet-dev-0001"
}

data "azurerm_subnet" "datasubnetblock2" {
    resource_group_name = "rg-dev-0001"
    name = "subnet-prod-backend-1"
    virtual_network_name = "vnet-dev-0001"
}