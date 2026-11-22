# AWS VPC Peering Architecture

## 1. Project Objective

To establish private communication between two separate AWS VPCs using a VPC Peering connection.

## 2. VPC A Configuration

- VPC Name: ewb-vpc-a
- CIDR Block: 10.10.0.0/16

### Subnets

- Public Subnet: 10.10.1.0/24
- Private Subnet: 10.10.2.0/24

## 3. VPC B Configuration

- VPC Name: ewb-vpc-b
- CIDR Block: 10.20.0.0/16

### Subnet

- Private Subnet: 10.20.1.0/24

## 4. EC2 Instances

| Instance | Private IP |
|---|---|
| Bastion | 10.10.1.10 |
| App-A | 10.10.2.10 |
| App-B | 10.20.1.10 |

## 5. VPC Peering

- Peering Connection: ewb-a-b-peer
- Source VPC: ewb-vpc-a
- Destination VPC: ewb-vpc-b

## 6. Connectivity

App-A and App-B communicate using their private IP addresses through the VPC Peering connection.

SSH access to private instances is performed through the Bastion host.

## 7. Network Security

Security groups control SSH and ICMP traffic between the required instances.
