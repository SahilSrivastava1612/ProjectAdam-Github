resource "azurerm_network_security_group" "nsgblock" {  
    name = "tododevnsg1"
    location = "South Africa North"
    resource_group_name = "rg-dev-0001"

    security_rule {
        name                       = "AllowHTTPSSH"
        priority                   = 101
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_ranges     = ["22", "80"]
        source_address_prefix      = "*"
        destination_address_prefix = "*"
    }

    security_rule {
        name                       = "AllowHTTP"
        priority                   = 110
        direction                  = "Outbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "80"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
    }
}