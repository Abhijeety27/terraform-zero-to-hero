provider "aws" {
  region = "ap-south-1"
}


# Security Group to allow SSH access
resource "aws_security_group" "ec2_sg" {
  name_prefix  = "ec2-ssh-"
  description  = "Allow SSH inbound traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Open to all IPs; replace with specific IP for security
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"  # Allow all outbound traffic
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# EC2 instance with SSH-enabled security group
resource "aws_instance" "ec2Instance" {
  ami           = "ami-0327f51db613d7bd2"
  key_name      = "Revision"
  instance_type = "t2.micro"
  
  vpc_security_group_ids = [aws_security_group.ec2_sg.id] # Attach security group

  tags = {
    Name = "Terraform-EC2"
  }
}

# Output the public IP address
output "ec2_public_ip" {
  value = aws_instance.ec2Instance.public_ip
  description = "The public IP of the EC2 instance"
}