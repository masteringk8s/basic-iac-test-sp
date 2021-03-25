# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

data "azurerm_client_config" "current" {}

data "azurerm_resource_group" "project-rg" {
    name = "PROJECT-5058-RG"
}

# resource "azurerm_resource_group" "hub" {
#   name      = "TEST-RG"
#   location  = "eastus"
# }

resource "azurerm_virtual_network" "ase-vnet" {
  name                = "vnet1"
  location            = "eastus"
  resource_group_name = data.azurerm_resource_group.project-rg.name
  address_space       = ["10.0.0.0/16"]
}


