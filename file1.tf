terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
provider "aws" {
  shared_config_files      = ["/Users/praspat/.aws/config"]
  shared_credentials_files = ["/Users/praspat/.aws/credentials"]
  profile                  = "terraform"
}
resource "aws_s3_bucket" "example" {
  bucket = "demo-test-praspat"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}