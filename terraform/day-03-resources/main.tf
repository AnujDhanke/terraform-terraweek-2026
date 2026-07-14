#key-pair of ec2
resource "aws_key_pair" "mykey" {
  key_name   = "terrakey"
  public_key = (file("~/terraform-terraweek-2026/terrakey.pub"))
}

#vpc 
resource "aws_default_vpc" "default" {

}

#security group of ec2
resource "aws_security_group" "mysecgrp" {
  name        = "terra-sg"
  description = "Security group for my EC2 instance"
  vpc_id      = aws_default_vpc.default.id

  tags = {
    Name = "terra-sg"
  }


  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.myip]
    description = "Allow SSH access from my IP"
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow all outbound traffic"
  }
}


# ec2 instance
resource "aws_instance" "myec2" {
  ami             =  var.amiID
  instance_type   = "t2.nano"
  key_name        = aws_key_pair.mykey.key_name
  security_groups = [aws_security_group.mysecgrp.name]

  root_block_device {
    volume_size = 8
    volume_type = "gp3"
  }

  tags = {
    Name    = "terra-ec2"
    Project = "terraweek"
  }
}