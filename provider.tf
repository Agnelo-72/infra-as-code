
terraform {
  required_version = ">= 1.5.0"  #use terraform version 1.5.0 or higher
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 6.0"   
    }
  }
} 



provider "aws" {
  region = "us-east-1"  #Region where the resources will be created
}
