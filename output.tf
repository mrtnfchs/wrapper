output "vpc_id" {
  description = "The ID of the VPC"
  value       = try(module.vpc[0].vpc_id, "")
}

output "private_subnet_id" {
  description = "The ID of the private subnet"
  value       = try(module.vpc[0].private_subnet_id, "")
}

output "public_subnet_id" {
  description = "The ID of the public subnet"
  value       = try(module.vpc[0].public_subnet_id, "")
}

output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = try(module.ec2[0].instance_id, "")
}
