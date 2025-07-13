terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.34.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-prod-000a1"
    storage_account_name = "staccstate001"
    container_name       = "statelock"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {
  }
  subscription_id = "4a8882d8-040a-43b9-81c8-844e324752c0"
}