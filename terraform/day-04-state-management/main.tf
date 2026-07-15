#key-pair of ec2
resource "aws_key_pair" "mykey" {
  key_name   = "terra-key"
  public_key = (file("C:\\Users\\dhank\\terraform-terraweek-2026\\terra-key.pub"))
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

resource aws_s3_bucket "mybucket" {
    bucket = "my-terraform-bucket-33"
    tags = {
        Name = "My terraform bucket"
    }
}

resource aws_s3_bucket_versioning "versioning" {
    bucket = aws_s3_bucket.mybucket.id
    versioning_configuration {
        status = "Enabled"
    }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "tf_state_encryption" {
  bucket = aws_s3_bucket.mybucket.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

resource "aws_s3_bucket_public_access_block" "tf_state_block" {
  bucket                  = aws_s3_bucket.mybucket.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_dynamodb_table" "tf_lock" {
  name         = "terraweek-tfstate-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}