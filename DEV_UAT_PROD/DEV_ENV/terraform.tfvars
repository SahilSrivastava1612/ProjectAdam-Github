resource_group = {       # New RG Created
  rg-prod-000a2 = "South Africa North"
}

key_vault = {    # Key_vault_Comment
  kv-prod-000a2 = {
    name                = "kv-prod-000a2"
    resource_group_name = "rg-prod-000a2"
    location            = "South Africa North"
    sku_name            = "standard"
  }
}

vnet = {
  vnet-prod-000a1 = {
    name                = "vnet-prod-000a1"
    address_space       = ["10.8.0.0/20"]
    location            = "South Africa North"
    resource_group_name = "rg-prod-000a2"
  }
}

subnet = {
  subnet-prod-frontend = {
    name                 = "subnet-prod-frontend-1"
    resource_group_name  = "rg-prod-000a2"
    virtual_network_name = "vnet-prod-000a1"
    address_prefixes     = ["10.8.0.0/24"]
  }

  subnet-prod-backend = {
    name                 = "subnet-prod-backend-1"
    resource_group_name  = "rg-prod-000a2"
    virtual_network_name = "vnet-prod-000a1"
    address_prefixes     = ["10.8.8.0/24"]
  }
}

sql_server = {
  sql-server-prod-000a1 = {
    name                = "sql-server-prod-000a1"
    resource_group_name = "rg-prod-000a2"
    location            = "South Africa North"
    version             = "12.0"
  }
}

sql_server_database = {
  sql-db-prod-000a1 = {
    name                = "sql-db-prod-000a1"
    sku_name            = "S0"
  }
}

pip = {
  pip1 = {
    name                = "mytodofrontendpip"
    resource_group_name = "rg-prod-000a2"
    location            = "South Africa North"
    allocation_method   = "Static"
  }

  pip2 = {
    name                = "mytodobackendpip"
    resource_group_name = "rg-prod-000a2"
    location            = "South Africa North"
    allocation_method   = "Static"
  }
}

vm = {
  vm1 = {
    name                 = "vm-frontend-todo-000a1"
    resource_group_name  = "rg-prod-000a2"
    location             = "South Africa North"
    size                 = "Standard_B1s"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
    publisher            = "Canonical"
    offer                = "0001-com-ubuntu-server-jammy"
    sku                  = "22_04-lts"
    version              = "latest"
  }

  vm2 = {
    name                 = "vm-frontend-todo-000a2"
    resource_group_name  = "rg-prod-000a2"
    location             = "South Africa North"
    size                 = "Standard_B1s"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
    publisher            = "Canonical"
    offer                = "0001-com-ubuntu-server-jammy"
    sku                  = "22_04-lts"
    version              = "latest"
  }
}