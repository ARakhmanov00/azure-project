provider "aws" {
    region = "us-east-2"
    access_key= "AKIA3HSBUZG4TOBQARDZ"
    secret_key= "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"
}

resource "aws_route53_record" "wordpress" {
  zone_id = "Z10280403S2MA8C5S7FIA"
  name    = "blog.devops00.com"
  type    = "A"
  ttl     = 300
  records = [azurerm_public_ip.wordpress.ip_address]
}
