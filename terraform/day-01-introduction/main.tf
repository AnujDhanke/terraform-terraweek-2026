resource "local_file" "day01" {
  filename = "terraform-day01.txt"

  content = <<EOT
Terraform TerraWeek 2026
Day 1 - Introduction to Terraform

Challenge Completed:
* Installed Terraform
* Understood Infrastructure as Code (IaC)
* Learned Terraform Workflow
* Created First Terraform Configuration

Created by: Anuj Dhanke
EOT
}