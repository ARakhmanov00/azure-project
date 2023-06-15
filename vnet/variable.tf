variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "project"
}

variable "location" {
  description = "Location/region for the resource group"
  type        = string
  default     = "West US"
}

variable "virtual_network_name" {
  description = "Name of the virtual network"
  type        = string
  default     = "project"
}

variable "address_space" {
  description = "Address space for the virtual network"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_names" {
  description = "Names of the subnets"
  type        = list(string)
  default     = ["public1", "public2", "public3"]
}

variable "subnet_address_prefixes" {
  description = "Address prefixes for the subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}