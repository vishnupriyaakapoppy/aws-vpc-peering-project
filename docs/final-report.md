
# AWS VPC Peering - Final Project Report

## 1. Student Details
- Student Name: Vishnu Priya B
- Project: AWS VPC Peering
- Course/Batch: To be filled
- AWS Region: ap-south-1
- Completion Date: To be filled

## 2. Project Objective
The objective is to connect two separate AWS VPCs using VPC Peering and demonstrate private connectivity between their EC2 instances.

## 3. Architecture
### VPC A
- CIDR: 10.10.0.0/16
- Public Subnet: 10.10.1.0/24
- Private Subnet: 10.10.2.0/24

### VPC B
- CIDR: 10.20.0.0/16
- Private Subnet: 10.20.1.0/24

## 4. EC2 Instances
| Instance | Private IP |
|---|---|
| Bastion | 10.10.1.10 |
| App-A | 10.10.2.10 |
| App-B | 10.20.1.10 |

## 5. Technologies Used
- Amazon Web Services
- VPC
- VPC Peering
- EC2
- Terraform
- GitHub
- Linux
- SSH

## 6. Implementation
To be updated after actual AWS deployment.

## 7. Connectivity Test Results
To be updated with actual test results and screenshots.

## 8. Security Configuration
- SSH restricted to authorised sources.
- Private application instances have no public IP addresses.
- ICMP rules restricted to the required private IP addresses.

## 9. Challenges and Solutions
To be updated after project execution.

## 10. Learning Outcomes
- Understanding AWS networking.
- Creating VPCs and subnets.
- Configuring route tables.
- Establishing VPC Peering.
- Using Terraform for Infrastructure as Code.
- Testing private connectivity.

## 11. Evidence
Actual screenshots will be added after AWS lab execution.

## 12. Cleanup
AWS resources and any remaining billable resources must be checked and cleaned up after testing, under instructor supervision.

## 13. Conclusion
This project demonstrates how two separate AWS VPCs can communicate privately through VPC Peering using Terraform-managed infrastructure.
