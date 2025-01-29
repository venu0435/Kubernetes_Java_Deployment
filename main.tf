terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }

  required_version = ">= 1.3.0"
}

provider "azurerm" {
  features {}
}

module "network" {
  source = "./modules/network"
}

module "vm" {
  source             = "./modules/vm"
  resource_group     = module.network.resource_group
  subnet_id          = module.network.subnet_id
  admin_username     = var.admin_username
  admin_password     = var.admin_password
  vm_size            = var.vm_size
}
