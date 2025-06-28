# Terraform AWS VPC Demo

This configuration uses the [terraform-aws-modules/vpc/aws](https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/latest) module to create a VPC in `us-east-1` with:
- 1 public subnet
- 1 private subnet
- 1 NAT Gateway

## Usage

1. Initialize Terraform:
   ```cmd
   cd terraform-vpc-demo
   terraform init
   ```
2. Review the plan:
   ```cmd
   terraform plan
   ```
3. Apply the configuration:
   ```cmd
   terraform apply
   ```

## Outputs
- VPC ID
- Public subnet IDs
- Private subnet IDs
- NAT Gateway IDs
