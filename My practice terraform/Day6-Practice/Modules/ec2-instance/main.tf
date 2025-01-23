provider "aws" {
  region = "ap-south-1"
}

variable "ami" {
  description = "This AMI for instance"
}

variable "instance_type" {
  description = "this is instance type"
}

resource "aws_instance" "name" {
  ami = var.ami
  instance_type = var.instance_type
}