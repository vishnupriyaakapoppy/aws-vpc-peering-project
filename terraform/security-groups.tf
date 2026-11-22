resource "aws_security_group" "bastion" {
  name        = "ewb-sg-bastion"
  description = "Allow SSH from authorised administrator"
  vpc_id      = aws_vpc.vpc_a.id

  ingress {
    description = "SSH from administrator"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.admin_cidr]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "ewb-sg-bastion"
    Project = var.project_name
  }
}

resource "aws_security_group" "app_a" {
  name        = "ewb-sg-app-a"
  description = "Allow SSH from bastion and ICMP from App-B"
  vpc_id      = aws_vpc.vpc_a.id

  ingress {
    description = "SSH from bastion"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["10.10.1.10/32"]
  }

  ingress {
    description = "ICMP echo request from App-B"
    from_port   = 8
    to_port     = 0
    protocol    = "icmp"
    cidr_blocks = ["10.20.1.10/32"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "ewb-sg-app-a"
    Project = var.project_name
  }
}

resource "aws_security_group" "app_b" {
  name        = "ewb-sg-app-b"
  description = "Allow SSH from bastion and ICMP from App-A"
  vpc_id      = aws_vpc.vpc_b.id

  ingress {
    description = "SSH from bastion"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["10.10.1.10/32"]
  }

  ingress {
    description = "ICMP echo request from App-A"
    from_port   = 8
    to_port     = 0
    protocol    = "icmp"
    cidr_blocks = ["10.10.2.10/32"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "ewb-sg-app-b"
    Project = var.project_name
  }
}
