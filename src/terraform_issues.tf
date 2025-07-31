# This file contains issues that can be detected by Terraform tools

provider "aws" {
  region = "us-west-2"
}

# Hardcoded credentials
provider "aws" {
  access_key = "AKIAIOSFODNN7EXAMPLE"
  secret_key = "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY"
  region     = "us-west-2"
}

# Resource without tags
resource "aws_instance" "web" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
}

# Security group with overly permissive rules
resource "aws_security_group" "allow_all" {
  name        = "allow_all"
  description = "Allow all inbound traffic"

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# S3 bucket with public access
resource "aws_s3_bucket" "public" {
  bucket = "my-public-bucket"
  acl    = "public-read"
}

# IAM policy with admin access
resource "aws_iam_policy" "admin_policy" {
  name        = "AdminPolicy"
  description = "Admin policy"

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "*",
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
}

# Unencrypted EBS volume
resource "aws_ebs_volume" "unencrypted" {
  availability_zone = "us-west-2a"
  size              = 10
}

# Hardcoded password
resource "aws_db_instance" "default" {
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  username             = "admin"
  password             = "password123"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
}