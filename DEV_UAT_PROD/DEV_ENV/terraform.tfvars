resource_group = {       
  rg-dev-0001 = "South Africa North"
}
# Creating 2nd Conflict
key_vault = {    
  kv-dev-0001 = {
    name                = "kv-dev-0001abd"
    resource_group_name = "rg-dev-0001"
    location            = "South Africa North"
    sku_name            = "standard"
  }
}

vnet = {
  vnet-dev-0001 = {
    name                = "vnet-dev-0001"
    address_space       = ["10.8.0.0/20"]
    location            = "South Africa North"
    resource_group_name = "rg-dev-0001"
  }
}

subnet = {
  subnet-dev-frontend = {
    name                 = "subnet-dev-frontend-1"
    resource_group_name  = "rg-dev-0001"
    virtual_network_name = "vnet-dev-0001"
    address_prefixes     = ["10.8.0.0/24"]
  }

  subnet-dev-backend = {
    name                 = "subnet-dev-backend-1"
    resource_group_name  = "rg-dev-0001"
    virtual_network_name = "vnet-dev-0001"
    address_prefixes     = ["10.8.8.0/24"]
  }
}

sql_server = {
  sql-server-dev-0001 = {
    name                = "sql-server-dev-0001"
    resource_group_name = "rg-dev-0001"
    location            = "South Africa North"
    version             = "12.0"
  }
}

sql_server_database = {
  sql-db-dev-0001 = {
    name                = "sql-db-dev-0001"
    sku_name            = "S0"
  }
}

pip = {
  pip1 = {
    name                = "mytodofrontendpip"
    resource_group_name = "rg-dev-0001"
    location            = "South Africa North"
    allocation_method   = "Static"
  }

  pip2 = {
    name                = "mytodobackendpip"
    resource_group_name = "rg-dev-0001"
    location            = "South Africa North"
    allocation_method   = "Static"
  }
}

vm = {
  vm1 = {
    name                 = "vm-frontend-todo-0001"
    resource_group_name  = "rg-dev-0001"
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
    name                 = "vm-backend-todo-0001"
    resource_group_name  = "rg-dev-0001"
    location             = "South Africa North"
    size                 = "Standard_B1s"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
    publisher            = "Canonical"
    offer                = "0001-com-ubuntu-server-focal"
    sku                  = "20_04-lts"
    version              = "latest"
  }
}