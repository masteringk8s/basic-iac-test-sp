variable "prefix" {
  type                      = string
  description               = "Prefix to use for Infra"
}

variable "vmsize" {
  type                      = string
  description               = "Size of VM to create"
}

variable "vmImage" {
  type                      = string
  description               = "VM image to use for Infra"
}

variable "project-rg" {
  type                      = string
  description               = "Project RG"
}

variable "location" {
  type                      = string
  default                   = "eastus"
  description               = "The Azure Region used"
}

variable "agent-vnet-rg" {
  type                      = string
  description               = "ADO agent vnet name"
}

variable "agent-vnet-name" {
  type                      = string
  description               = "ADO agent vnet name"
}
