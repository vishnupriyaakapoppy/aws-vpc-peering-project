
# AWS VPC Peering - Troubleshooting Guide

## 1. VPC Peering Connection Not Active
Possible causes:
- Peering connection was not accepted.
- VPC configuration is incorrect.

Solution:
- Check the peering connection status.
- Confirm that the correct VPCs are connected.

## 2. Ping Is Not Working
Possible causes:
- Missing route table entries.
- Incorrect security group rules.
- Incorrect private IP addresses.

Solution:
- Check routes in both VPCs.
- Check ICMP inbound rules.
- Verify the private IP addresses.

## 3. SSH Connection Failed
Possible causes:
- Incorrect SSH key.
- Incorrect security group rule.
- Incorrect username.

Solution:
- Verify the key pair.
- Check SSH access rules.
- Use ec2-user for Amazon Linux.

## 4. Terraform Errors
Possible causes:
- Incorrect resource references.
- Missing variables.
- Incorrect configuration syntax.

Solution:
- Review the Terraform files.
- Run terraform fmt and terraform validate in an authorised environment.
- Read the error message carefully.

## 5. App-A Cannot Reach App-B
Check:
- VPC peering status.
- Route from VPC A to VPC B.
- Return route from VPC B to VPC A.
- Security group rules.
- Network ACL rules.

## 6. Important Safety Checks
- Never upload private SSH keys to GitHub.
- Never publish AWS access keys.
- Never allow SSH from 0.0.0.0/0.
- Verify resources and costs with the instructor before deployment.
