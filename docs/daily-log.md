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



---

# Day 04 - Terraform State Management

**Date:** 15 July 2026

## Challenge Objective

Understand Terraform State, learn the difference between local and remote state, and configure a secure remote backend using Amazon S3 and DynamoDB.

### Topics Covered

- Terraform State
- Local State
- Remote State
- Backend Configuration
- Amazon S3 Backend
- DynamoDB State Locking
- State Migration
- S3 Versioning
- Server-Side Encryption

### Terraform Commands Executed

```bash
terraform fmt
terraform init
terraform validate
terraform plan
terraform apply
terraform destroy
```

### Hands-on Implementation

- Created an S3 bucket for remote Terraform state storage.
- Enabled bucket versioning to maintain previous versions of the state file.
- Configured server-side encryption for secure state storage.
- Created a DynamoDB table for Terraform state locking.
- Migrated the local Terraform state to the remote S3 backend.
- Successfully destroyed all resources after validating the setup.

### Outcome

- Successfully configured a remote Terraform backend using Amazon S3.
- Learned how Terraform state migration works.
- Understood the purpose of state locking using DynamoDB.
- Explored security best practices for storing Terraform state.

### Challenges Faced

- Understood the bootstrapping process required before configuring a remote backend.
- Learned why Terraform state should be stored remotely in collaborative environments.
- Explored how S3 versioning and encryption improve state reliability and security.

### Key Learnings

- Terraform State represents the current infrastructure managed by Terraform.
- Remote state enables collaboration among multiple users.
- S3 stores the Terraform state file, while DynamoDB prevents concurrent modifications through state locking.
- Backend configuration determines where Terraform stores and manages its state.
- Versioning and encryption improve the reliability and security of Terraform state.

---




### Repository Progress
- ✅ Day 01 - Introduction to Terraform
- ✅ Day 02 - Terraform Configuration Language (HCL)
- ✅ Day 03 - Managing AWS resources through Terraform