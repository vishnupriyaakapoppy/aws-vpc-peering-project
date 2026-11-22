resource "aws_subnet" "a_public" {
  vpc_id                  = aws_vpc.vpc_a.id
  cidr_block              = "10.10.1.0/24"
  availability_zone       = "ap-south-1a"
  map_public_ip_on_launch = false

  tags = {
    Name    = "ewb-a-public"
    Project = var.project_name
  }
}

resource "aws_subnet" "a_private" {
  vpc_id                  = aws_vpc.vpc_a.id
  cidr_block              = "10.10.2.0/24"
  availability_zone       = "ap-south-1a"
  map_public_ip_on_launch = false

  tags = {
    Name    = "ewb-a-private"
    Project = var.project_name
  }
}

resource "aws_subnet" "b_private" {
  vpc_id                  = aws_vpc.vpc_b.id
  cidr_block              = "10.20.1.0/24"
  availability_zone       = "ap-south-1a"
  map_public_ip_on_launch = false

  tags = {
    Name    = "ewb-b-private"
    Project = var.project_name
  }
}
