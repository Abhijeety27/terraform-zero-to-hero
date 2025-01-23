provider "aws" {
  region = "ap-south-1"
}


resource "aws_instance" "practice1" {
  instance_type = "t2.micro"
  ami = "ami-03c68e52484d7488f"
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "abhijeet-yadav-new12387-bucket"
}