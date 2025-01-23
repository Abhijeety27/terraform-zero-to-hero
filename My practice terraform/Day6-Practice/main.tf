provider "aws" {
  region = "ap-south-1"
}

variable "ami" {
  
}

variable "instance_type" {
  
}

module "ec2_instance_creation" {
  source = "./Modules/ec2-instance"
  ami = var.ami
  instance_type = var.instance_type
}