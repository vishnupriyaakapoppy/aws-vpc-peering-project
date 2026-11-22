
output "vpc_a_id" {
  description = "ID of VPC A"
  value       = aws_vpc.vpc_a.id
}

output "vpc_b_id" {
  description = "ID of VPC B"
  value       = aws_vpc.vpc_b.id
}

output "peering_connection_id" {
  description = "VPC Peering connection ID"
  value       = aws_vpc_peering_connection.a_to_b.id
}

output "bastion_public_ip" {
  description = "Public IP of Bastion"
  value       = aws_instance.bastion.public_ip
}

output "bastion_private_ip" {
  description = "Private IP of Bastion"
  value       = aws_instance.bastion.private_ip
}

output "app_a_private_ip" {
  description = "Private IP of App-A"
  value       = aws_instance.app_a.private_ip
}

output "app_b_private_ip" {
  description = "Private IP of App-B"
  value       = aws_instance.app_b.private_ip
}
