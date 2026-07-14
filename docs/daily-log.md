# Day 1

Date: 12 July 2026

## Topics Covered
- Infrastructure as Code (IaC)
- Terraform Basics
- Providers
- Resources
- Terraform Workflow

## Commands Executed
- terraform init
- terraform fmt
- terraform validate
- terraform plan
- terraform apply
- terraform destroy

## Outcome
Successfully created and managed my first Terraform resource using the Local Provider.

## Day 02 - Terraform Configuration Language (HCL)

**Date:** 13 July 2026

### Challenge Objective
Explore Terraform Configuration Language (HCL), understand variables, data types, expressions, and practice writing Terraform configurations using HCL.

### Topics Covered
- HashiCorp Configuration Language (HCL)
- Variables
- Primitive Data Types
  - String
  - Number
  - Boolean
- Collection Data Types
  - List
  - Map
- Structural Data Type
  - Object
- Expressions & String Interpolation
- Outputs
- Local Provider

### Hands-on Implementation
Created a Terraform configuration that generates a local text file using the **Local Provider**. The configuration was made configurable using HCL variables instead of hardcoded values.

### Terraform Commands Executed
```bash
terraform fmt
terraform init
terraform validate
terraform plan
terraform apply
terraform destroy
```

### Outcome
- Successfully understood HCL syntax.
- Learned how variables improve the reusability of Terraform configurations.
- Practiced using multiple Terraform data types.
- Used expressions to dynamically generate file content.
- Successfully completed the full Terraform workflow.

### Challenges Faced
- Resolved syntax issues related to HCL expressions.
- Understood the correct usage of Terraform interpolation and the `join()` function.

---


---

# Day 03 - Managing Resources

**Date:** 14 July 2026

## Challenge Objective

Learn how Terraform defines and manages cloud resources while understanding dependencies, lifecycle management, and provisioners.

### Topics Covered

- AWS Provider
- EC2 Instance
- Security Group
- Key Pair
- Default VPC
- Resource Dependencies

### Terraform Commands Executed

```bash
terraform fmt
terraform init
terraform validate
terraform plan
terraform apply
terraform destroy
```

### Outcome

- Successfully provisioned AWS resources using Terraform.
- Learned how resources reference one another.
- Destroyed all created resources after successful testing.

### Challenges Faced

- Resolved Terraform validation errors.
- Understood attribute data types and resource references.
- Configured AWS authentication using the AWS Provider.

### Key Learnings

- Resources represent actual infrastructure components.
- Terraform automatically manages dependencies through references.

---


### Repository Progress
- ✅ Day 01 - Introduction to Terraform
- ✅ Day 02 - Terraform Configuration Language (HCL)
- ✅ Day 03 - Managing AWS resources through Terraform