
# Connectivity Tests

## Project
AWS VPC Peering – Connect Two VPCs and Prove Private Connectivity

## Test Environment
- Region: ap-south-1
- VPC A: 10.10.0.0/16
- VPC B: 10.20.0.0/16
- App-A: 10.10.2.10
- App-B: 10.20.1.10

## Test 1: Baseline Connectivity
Before configuring VPC peering routes:

Command:
ping -c 4 10.20.1.10

Expected result:
- No successful replies.
- Private connectivity is not yet established.

Actual result:
To be recorded during the AWS lab.

## Test 2: App-A to App-B
After configuring VPC peering and routes:

Command:
ping -c 4 10.20.1.10

Expected result:
- Four successful replies.
- No packet loss.

Actual result:
To be recorded during the AWS lab.

## Test 3: App-B to App-A

Command:
ping -c 4 10.10.2.10

Expected result:
- Four successful replies.
- No packet loss.

Actual result:
To be recorded during the AWS lab.

## Test 4: SSH Through Bastion

Expected result:
- Connect to the bastion host.
- Access private App-B through the bastion.
- App-B has no public IP address.

Actual result:
To be recorded during the AWS lab.

## Test 5: Controlled Failure

Action:
Temporarily remove the App-B inbound ICMP rule allowing App-A.

Expected result:
- Ping from App-A to App-B fails.

Recovery:
Restore the original ICMP rule and repeat the ping.

Expected recovery:
- Connectivity works again.

Actual result:
To be recorded during the AWS lab.

## Evidence
Actual screenshots will be added to the screenshots folder after testing.
