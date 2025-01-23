provider "aws" {
    region = "ap-south-1" 
}

resource "aws_instance" "example1" {
  ami = var.ami_value
  instance_type = var.instance_type_value
  key_name = var.key_name_value
}