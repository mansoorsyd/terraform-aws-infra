# Terraform AWS Infrastructure

Infrastructure as Code that provisions an AWS EC2 web server with a security group.

## What it creates
- An EC2 instance (Ubuntu 22.04, latest AMI found automatically)
- A security group allowing HTTP (80) from anywhere and SSH (22) only from my IP

## Tools used
Terraform, AWS

## Files
    main.tf       # Resources (EC2, security group)
    variables.tf  # Inputs (region, instance type, my IP)
    outputs.tf    # Prints the server's public IP

## How to use
    terraform init
    terraform plan -var="my_ip=YOUR_IP/32"
    terraform apply -var="my_ip=YOUR_IP/32"
    terraform destroy -var="my_ip=YOUR_IP/32"

**Always run `terraform destroy` after testing to avoid AWS charges.**

## What I learned
- Writing infrastructure as code
- Using variables, outputs, and data sources
- Keeping state files and secrets out of Git
