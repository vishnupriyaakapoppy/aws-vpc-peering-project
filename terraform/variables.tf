variable "aws_region" {
  description = "AWS region for the project"
  type        = string
  default     = "ap-south-1"
}

variable "vpc_a_cidr" {
  description = "CIDR block for VPC A"
  type        = string
  default     = "10.10.0.0/16"
}

variable "vpc_b_cidr" {
  description = "CIDR block for VPC B"
  type        = string
  default     = "10.20.0.0/16"
}

variable "project_name" {
  description = "Project name used for resource tags"
  type        = string
  default     = "EWB-VPC-Peering"
}

variable "admin_cidr" {
  description = "Your authorised public IPv4 address in CIDR notation"
  type        = string
}
