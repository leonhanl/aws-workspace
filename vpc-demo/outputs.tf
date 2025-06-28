output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

output "public_subnet_ids" {
  description = "The IDs of the public subnets"
  value       = module.vpc.public_subnets
}

output "private_subnet_ids" {
  description = "The IDs of the private subnets"
  value       = module.vpc.private_subnets
}

output "nat_gateway_ids" {
  description = "The IDs of the NAT gateways"
  value       = module.vpc.natgw_ids
}

output "ec2_linux_public_ip" {
  description = "The public IP address of the Linux EC2 instance"
  value       = aws_instance.demo_ec2_linux.public_ip
}

output "ec2_windows_public_ip" {
  description = "The public IP address of the Windows EC2 instance"
  value       = aws_instance.demo_ec2_windows.public_ip  
}

output "ec2_windows_instance_id" {
  description = "The ID of the Windows EC2 instance"
  value       = aws_instance.demo_ec2_windows.id  
}