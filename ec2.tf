# Configure the AWS Provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "myec2" {
    ami = "ami-0f409bae3775dc8e5"
    instance_type = "t2.micro"
  
    tags = {
        Name = "myfirstinstance"
    }
}
