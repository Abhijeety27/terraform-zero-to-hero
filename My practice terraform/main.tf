provider "aws" {
  region = "ap-south-1"
}


resource "aws_instance" "plainInstance" {
  ami = "ami-08bf489a05e916bbd"
  instance_type = "t2.micro"
  key_name = "nagios Key"
}


# module "ec2_INSTANCE" {
#   source = "./Module/ec2_instance_creation"
#   ami_value = "ami-08bf489a05e916bbd"
#   instance_type_value = "t2.micro"
#   key_name = "nagios Key"
# }    

       