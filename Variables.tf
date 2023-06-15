variable "location" {
  description = "The location where resources will be created"
  type        = string
  default     = "WestUs"
}

variable "tags" {
  description = "A map of the tags to use for the resources that are deployed"
  type        = map(string)

  default = {
    environment = "DevOps"
  }
}

variable "application_port" {
  description = "The port that you want to expose to the external load balancer"
  default     = 80
}

variable "admin_username" {
  description = "User name to use as the admin account on the VMs that will be part of the VM Scale Set"
  default     = "wordpress"
}

variable "admin_password" {
  description = "Default password for admin account"
  default     = "26F4QXHVYbBjC$WH2HAc"
}

variable "dbname"{
  default = "db-wordpress-team2-aug22"
}

variable "db_server_name" {
 default = "team2-db-server-wordpress"
}

variable "database_admin_login" {
  default = "wordpress"
}

variable "database_admin_password" {
  default = "26F4QXHVYbBjC$WH2HAc"
}

variable "cidr_block" {
  description = "Provide CIDR Block"
  type        = list
  default     = ["10.0.0.0/16"]
}

variable "subnet_address1" {
  description = "Provide subnet address space"
  type        = list
  default     = ["10.0.1.0/24"]
}

variable "subnet_address2" {
  description = "Provide subnet address space"
  type        = list
  default     = ["10.0.2.0/24"]
}

variable "subnet_address3" {
  description = "Provide subnet address space"
  type        = list
  default     = ["10.0.3.0/24"]
}

variable "sec_group" {
  description = "Enter Security Group name"
  default     = "wordpress_sec_group"
}

variable "access_key" {
  description = "Provide Acess Key for AWS"
  default     = "AKIA3HSBUZG4TOBQARDZ"
}

variable "secret_key" {
  description = "Provide Secret Key for AWS"
  default     = "YeV5BDsEpe8+iIzwZ4sZDco4wssXdCCzDZm5Tqnl"
}