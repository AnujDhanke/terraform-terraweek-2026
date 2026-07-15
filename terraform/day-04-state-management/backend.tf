terraform {
  backend "s3" {
    bucket         = "my-terraform-bucket-33"
    key            = "terraweek/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraweek-tfstate-lock"
    encrypt        = true
  }
}