resource "aws_internet_gateway" "igw_a" {
  vpc_id = aws_vpc.vpc_a.id

  tags = {
    Name    = "ewb-igw-a"
    Project = var.project_name
  }
}
