variable "region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "us-east-1"
}

variable "myip" {
  type    = string
  default = "1.39.25.195/32"
}

variable "amiID" {
  type    = string
  default = "ami-0b6d9d3d33ba97d99"
}