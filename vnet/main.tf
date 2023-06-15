resource "azurerm_resource_group" "project" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_virtual_network" "project" {
  name                = var.virtual_network_name
  address_space       = var.address_space
  location            = azurerm_resource_group.project.location
  resource_group_name = azurerm_resource_group.project.name
}

resource "azurerm_subnet" "public1" {
  name                 = var.subnet_names[0]
  resource_group_name  = azurerm_resource_group.project.name
  virtual_network_name = azurerm_virtual_network.project.name
  address_prefixes     = var.subnet_cidrs[0]
}

resource "azurerm_subnet" "public2" {
  name                 = var.subnet_names[1]
  resource_group_name  = azurerm_resource_group.project.name
  virtual_network_name = azurerm_virtual_network.project.name
  address_prefixes     = var.subnet_cidrs[1]
}

resource "azurerm_subnet" "public3" {
  name                 = var.subnet_names[2]
  resource_group_name  = azurerm_resource_group.project.name
  virtual_network_name = azurerm_virtual_network.project.name
  address_prefixes     = var.subnet_cidrs[2]
}