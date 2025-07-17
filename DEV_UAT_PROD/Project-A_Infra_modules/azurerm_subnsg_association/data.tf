data "azurerm_subnet" "datasubnetblock1" {
    resource_group_name = "rg-dev-0001"
    name = "subnet-dev-frontend-1"
    virtual_network_name = "vnet-dev-0001"
}

data "azurerm_subnet" "datasubnetblock2" {
    resource_group_name = "rg-dev-0001"
    name = "subnet-dev-backend-1"
    virtual_network_name = "vnet-dev-0001"
}

data "azurerm_network_security_group" "datansgblock1" {
    name = "tododevnsg1"
    resource_group_name = "rg-prod-0001"
}