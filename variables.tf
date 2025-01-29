variable "location" {
  description = "Azure Region"
  type        = string
  default     = "West Europe"
}

variable "resource_group_name" {
  description = "Azure Resource Group"
  type        = string
  default     = "JenkinsRG"
}

variable "admin_username" {
  description = "Admin Username for VM"
  type        = string
  default     = "azureuser"
}

variable "admin_password" {
  description = "Admin Password for VM"
  type        = string
  sensitive   = true
}

variable "vm_size" {
  description = "Size of Azure VM"
  type        = string
  default     = "Standard_B4ms_v3"
}
