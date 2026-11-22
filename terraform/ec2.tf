
variable "key_pair_name" {
  description = "Name of the EC2 key pair created in AWS"
  type        = string
  default     = "ewb-lab"
}

data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023.*-x86_64"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

resource "aws_instance" "bastion" {
  ami                         = data.aws_ami.amazon_linux.id
  instance_type               = "t3.micro"
  key_name                    = var.key_pair_name
  subnet_id                   = aws_subnet.a_public.id
  private_ip                  = "10.10.1.10"
  associate_public_ip_address = true
  vpc_security_group_ids      = [aws_security_group.bastion.id]

  tags = {
    Name    = "ewb-bastion"
    Project = var.project_name
  }
}

resource "aws_instance" "app_a" {
  ami                    = data.aws_ami.amazon_linux.id
  instance_type          = "t3.micro"
  key_name               = var.key_pair_name
  subnet_id              = aws_subnet.a_private.id
  private_ip             = "10.10.2.10"
  vpc_security_group_ids = [aws_security_group.app_a.id]

  tags = {
    Name    = "ewb-app-a"
    Project = var.project_name
  }
}

resource "aws_instance" "app_b" {
  ami                    = data.aws_ami.amazon_linux.id
  instance_type          = "t3.micro"
  key_name               = var.key_pair_name
  subnet_id              = aws_subnet.b_private.id
  private_ip             = "10.20.1.10"
  vpc_security_group_ids = [aws_security_group.app_b.id]

  tags = {
    Name    = "ewb-app-b"
    Project = var.project_name
  }
}
