# PROVIDER
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.62"
    }
  }
  backend "s3" {
    bucket = "tf-s3-matheus-001"
    key = "terraform.tfstate"
    dynamodb_table = "tf-dynamo-Matheusg-001"
    region = "us-east-1"
  }
}