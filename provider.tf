# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
  backend "azurerm" {
    storage_account_name  = "terraformstate2429sa"
    container_name        = "terraformstate"
    key                   = "terraform.tfstate.main"
  }
}

provider "azurerm" {
  skip_provider_registration = true
  features {} 
}

