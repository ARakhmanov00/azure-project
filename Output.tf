output "application_public_address" {
  value = azurerm_public_ip.wordpress.fqdn
}
output "route53_record" {
  value = aws_route53_record.wordpress
}
