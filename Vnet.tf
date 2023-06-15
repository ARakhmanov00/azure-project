resource "azurerm_virtual_network" "wordpress" {
  name                = "wordpress-vnet"
  address_space       = var.cidr_block
  location            = var.location
  resource_group_name = azurerm_resource_group.wordpress.name
  tags                = var.tags
}

resource "azurerm_subnet" "public1" {
  name                 = "public1"
  resource_group_name  = azurerm_resource_group.wordpress.name
  virtual_network_name = azurerm_virtual_network.wordpress.name
  address_prefixes     = var.subnet_address
}

resource "azurerm_subnet" "public2" {
  name                 = "public2"
  resource_group_name  = azurerm_resource_group.wordpress.name
  virtual_network_name = azurerm_virtual_network.wordpress.name
  address_prefixes     = var.subnet_address
}

resource "azurerm_subnet" "public3" {
  name                 = "public3"
  resource_group_name  = azurerm_resource_group.wordpress.name
  virtual_network_name = azurerm_virtual_network.wordpress.name
  address_prefixes     = var.subnet_address
}

resource "azurerm_public_ip" "wordpress" {
  name                = "wordpress-public-ip"
  location            = var.location
  resource_group_name = azurerm_resource_group.wordpress.name
  allocation_method   = "Static"
  domain_name_label   = random_string.fqdn.result
  tags                = var.tags
}
