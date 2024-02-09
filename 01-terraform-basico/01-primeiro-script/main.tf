terraform {
  required_version = "1.7.3"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.23.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
}

resource "aws_s3_bucket" "my-test-bucket" {
  bucket = "test-bucket-rodrigo-perin-"
  acl    = "private"

  tags = {
    Name        = "My bucket 3"
    Environment = "Dev"
    Managedby   = "Terraform"
  }
}
