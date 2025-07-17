terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.36.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-dev-0001a"
    storage_account_name = "staccstatelockdev001"
    container_name       = "statelock"
    key                  = "DEV_terraform.tfstate"
  }
}

provider "azurerm" {
  features {
  }
  subscription_id = "16a05a8e-7ba4-486d-8521-57e717aedbbd"
}