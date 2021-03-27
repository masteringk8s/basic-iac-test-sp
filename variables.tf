variable "vmsize" {
  type                      = string
  description               = "Size of VM to create"
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
