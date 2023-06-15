output "vnet_id" {
  value = azurerm_virtual_network.project.id
}

output "subnet_ids" {
  value = [
    azurerm_subnet.public1.id,
    azurerm_subnet.public2.id,
    azurerm_subnet.public3.id,
  ]
}