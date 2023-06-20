provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  region     = "us-east-1"
}

resource "aws_route53_record" "wordpress" {
  zone_id = "Z10280403S2MA8C5S7FIA"
  name    = "blog.devops00.com"
  type    = "A"
  ttl     = 300
  records = [azurerm_public_ip.wordpress.ip_address]
}
