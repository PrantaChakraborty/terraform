# terraform code to launch ec2 t2.micro
terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 4.16"
    }
  }
  required_version = ">=1.2.0"

}

provider "aws" {
  region = "us-west-2"
}

// to create a default vpc

# resource "aws_default_vpc" "default" {
#   tags = {
#     Name = "Default VPC"
#   }
# }

// create ec2 t2.micro instance

resource "aws_instance" "app_server" {
  ami = "ami-830c94e3"
  instance_type = "t2.micro"

}
