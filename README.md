# AWS VPC Peering Project

## Project Title
**AWS VPC Peering – Connect Two VPCs and Prove Private Connectivity**

## Project Overview
This project demonstrates private communication between two separate Amazon Virtual Private Clouds (VPCs) using AWS VPC Peering.

The infrastructure is defined and managed using Terraform.

## Project Objectives
- Create two separate AWS VPCs.
- Configure public and private subnets.
- Create an Internet Gateway for VPC A.
- Launch three EC2 instances.
- Configure security groups.
- Establish a VPC Peering connection.
- Configure routes between both VPCs.
- Test private connectivity using ICMP and SSH.
- Document the results and clean up lab resources.

## Network Architecture

### VPC A
- CIDR: `10.10.0.0/16`
- Public Subnet: `10.10.1.0/24`
- Private Subnet: `10.10.2.0/24`

### VPC B
- CIDR: `10.20.0.0/16`
- Private Subnet: `10.20.1.0/24`

## EC2 Instances

| Instance | Private IP |
|---|---|
| Bastion | `10.10.1.10` |
| App-A | `10.10.2.10` |
| App-B | `10.20.1.10` |

## Technologies Used
- Amazon Web Services (AWS)
- Amazon VPC
- VPC Peering
- Amazon EC2
- Terraform
- GitHub
- Linux
- SSH

## Repository Structure
- `architecture/` – Network architecture documentation
- `terraform/` – Infrastructure as Code files
- `screenshots/` – Project evidence
- `tests/` – Connectivity test documentation
- `docs/` – Concepts, troubleshooting and final report

## Expected Project Outcomes
- Active VPC Peering connection.
- Private communication between App-A and App-B.
- SSH access to private instances through the bastion host.
- Successful connectivity and controlled failure testing.

## Project Status
In Progress

## Author
Vishnu Priya B
