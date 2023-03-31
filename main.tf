module "vpc" {
  source  = "github.com/mrtnfchs/vpc"
  #source = "../vpc/"

  count = var.create_vpc ? 1 : 0

  enable_dns_hostnames = var.enable_dns_hostnames
  enable_dns_support = var.enable_dns_support
  create_private_subnet = var.create_private_subnet
  create_public_subnet = var.create_public_subnet
}

module "ec2" {
  source  = "github.com/mrtnfchs/ec2"
  #source = "../ec2/"

  count = var.create_ec2 ? 1 : 0

  subnet_id = module.vpc[0].private_subnet_id
  ami = var.ami
  instance_type = var.instance_type
  associate_public_ip_address = var.associate_public_ip_address
}
