resource "aws_security_group" "demo_ec2_sg" {
  name        = "demo-ec2-sg"
  description = "Allow SSH and HTTPS from anywhere"
  vpc_id      = module.vpc.vpc_id

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTPS"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "RDP"
    from_port   = 3389
    to_port     = 3389
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "demo-ec2-sg"
  }
}

resource "aws_instance" "demo_ec2_linux" {
  ami                         = "ami-0ec18f6103c5e0491"
  instance_type               = "t2.medium"    # t2.medium   t2.xlarge

  subnet_id                   = module.vpc.public_subnets[0]
  vpc_security_group_ids      = [aws_security_group.demo_ec2_sg.id]
  key_name                    = "lhan-aws-us-east-1"
  associate_public_ip_address = true

  tags = {
    Name = "demo-ec2-linux"
  }
}


resource "aws_instance" "demo_ec2_windows" {
  ami                         = "ami-0345f44fe05216fc4"
  instance_type               = "t2.medium"    # t2.medium   t2.xlarge

  subnet_id                   = module.vpc.public_subnets[0]
  vpc_security_group_ids      = [aws_security_group.demo_ec2_sg.id]
  key_name                    = "lhan-aws-us-east-1"
  associate_public_ip_address = true

  tags = {
    Name = "demo-ec2-windows"
  }
}

