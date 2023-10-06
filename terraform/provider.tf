terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.19.0"
    }
  }
backend "s3" {
    bucket = "akashdeep1"
    key    = "keys/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "akash"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}
