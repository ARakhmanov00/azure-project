resource "azurerm_virtual_network" "wordpress" {
  name                = "wordpress-vnet"
  address_space       = var.cidr_block
  location            = var.location
  resource_group_name = azurerm_resource_group.wordpress.name
  tags                = var.tags
}

resource "azurerm_subnet" "public-wordpress1" {
  name                 = "public-wordpress1"
  resource_group_name  = azurerm_resource_group.wordpress.name
  virtual_network_name = azurerm_virtual_network.wordpress.name
  address_prefixes     = var.subnet_address1
}

resource "azurerm_subnet" "public-wordpress2" {
  name                 = "public-wordpress2"
  resource_group_name  = azurerm_resource_group.wordpress.name
  virtual_network_name = azurerm_virtual_network.wordpress.name
  address_prefixes     = var.subnet_address2
}

resource "azurerm_subnet" "public-wordpress3" {
  name                 = "public-wordpress3"
  resource_group_name  = azurerm_resource_group.wordpress.name
  virtual_network_name = azurerm_virtual_network.wordpress.name
  address_prefixes     = var.subnet_address3
}

resource "azurerm_public_ip" "wordpress" {
  name                = "wordpress-public-ip"
  location            = var.location
  resource_group_name = azurerm_resource_group.wordpress.name
  allocation_method   = "Static"
  domain_name_label   = random_string.fqdn.result
  tags                = var.tags
}
