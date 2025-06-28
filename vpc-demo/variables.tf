variable "private_key_path" {
  description = "Path to the private key file for EC2 instance access"
  type        = string
}


variable "aws_region" {
  description = "AWS region for the resources"
  type        = string
  default     = "us-east-1"
}