
# AWS VPC Peering - Concepts

## 1. Amazon VPC
A Virtual Private Cloud is an isolated network in AWS.

## 2. CIDR Block
CIDR defines the IP address range of a network.

- VPC A: 10.10.0.0/16
- VPC B: 10.20.0.0/16

## 3. Subnet
A subnet is a smaller network inside a VPC.

- Public subnet in VPC A
- Private subnet in VPC A
- Private subnet in VPC B

## 4. Internet Gateway
An Internet Gateway allows a VPC to communicate with the internet when routes and security rules permit it.

## 5. EC2
Amazon EC2 provides virtual servers in AWS.

This project uses three instances: Bastion, App-A and App-B.

## 6. Security Group
A security group acts as a virtual firewall for an EC2 instance.

## 7. VPC Peering
VPC Peering connects two VPCs so their resources can communicate using private IP addresses.

The VPC CIDR ranges must not overlap.

## 8. Route Table
A route table controls where network traffic is sent.

Both VPCs need routes to the other VPC through the peering connection.

## 9. Bastion Host
A bastion host provides a controlled entry point to access private servers.

## 10. SSH
SSH stands for Secure Shell. It provides secure remote access to Linux servers.

## 11. Terraform
Terraform is an Infrastructure as Code tool used to define and manage cloud resources.

## 12. Private Connectivity
Private connectivity allows App-A and App-B to communicate using private IP addresses without public IP addresses on the application servers.
