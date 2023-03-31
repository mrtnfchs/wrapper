variable "create_vpc" {
  description = "Enable/disable VPC creation"
  type        = bool
  default     = false
}

variable "create_ec2" {
  description = "Enable/disable EC2 creation"
  type        = bool
  default     = false
}

variable "enable_dns_hostnames" {
  description = "Should be true to enable DNS hostnames in the VPC"
  type        = bool
  default     = null
}

variable "enable_dns_support" {
  description = "Should be true to enable DNS support in the VPC"
  type        = bool
  default     = null
}

variable "create_private_subnet" {
  description = "Enable/disable private subnet creation"
  type        = bool
  default     = null
}

variable "create_public_subnet" {
  description = "Enable/disable public subnet creation"
  type        = bool
  default     = null
}

variable "subnet_id" {
  description = "Target subnet ID"
  type        = string
  default     = null
}

variable "ami" {
  description = "AWS EC2 instance ami"
  type        = string
  default     = null
}

variable "instance_type" {
  description = "AWS EC2 instance tye"
  type        = string
  default     = null
}

variable "associate_public_ip_address" {
  description = "Enable/disable public ip address association"
  type        = bool
  default     = null
}
