output "application_public_address" {
  value = azurerm_public_ip.wordpress.fqdn
}
output "scale_set_public_ips" {
  value = azurerm_linux_virtual_machine_scale_set.wordpress.public_ip_addresses
}

output "route53_record" {
  value = aws_route53_record.wordpress
}
