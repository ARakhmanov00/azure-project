terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.91.0"
    }
  }
  backend "azurerm" {
        resource_group_name  = "wordpress-us" #resource resource_group_name created manually 
        storage_account_name = "wordpressus"     # created manually
        container_name       = "tfstate"
        key                  = "wordpress.tfstate"
    }
}
