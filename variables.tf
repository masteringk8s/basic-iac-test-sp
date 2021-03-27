variable "vmsize" {
  type                      = string
  description               = "Size of VM to create"
}

variable "location" {
  type                      = string
  default                   = "eastus"
  description               = "The Azure Region used"
}
