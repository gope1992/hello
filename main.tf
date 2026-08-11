terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.58.0"
    }
  }
}

provider "azurerm" {

  # Configuration options
  features {

  }
  subscription_id = "79bdb424-920b-45b8-8737-69b6a2c97109"
}

terraform {
  backend "azurerm" {
    resource_group_name  = "example"
    storage_account_name = "abcstoge1"
    container_name       = "newstate"
    key                  = "terraform.tfstate"
  }
}






resource "azurerm_resource_group" "example" {
  name     = "example1"
  location = "West Europe"
}


resource "azurerm_resource_group" "example2" {
  name     = "example2"
  location = "West Europe"
}


