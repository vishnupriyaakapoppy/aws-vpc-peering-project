
# Public route table for VPC A
resource "aws_route_table" "a_public" {
  vpc_id = aws_vpc.vpc_a.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw_a.id
  }

  route {
    cidr_block                = var.vpc_b_cidr
    vpc_peering_connection_id = aws_vpc_peering_connection.a_to_b.id
  }

  tags = {
    Name    = "ewb-rt-a-public"
    Project = var.project_name
  }
}

# Private route table for App-A
resource "aws_route_table" "a_private" {
  vpc_id = aws_vpc.vpc_a.id

  route {
    cidr_block                = var.vpc_b_cidr
    vpc_peering_connection_id = aws_vpc_peering_connection.a_to_b.id
  }

  tags = {
    Name    = "ewb-rt-a-private"
    Project = var.project_name
  }
}

# Private route table for App-B
resource "aws_route_table" "b_private" {
  vpc_id = aws_vpc.vpc_b.id

  route {
    cidr_block                = var.vpc_a_cidr
    vpc_peering_connection_id = aws_vpc_peering_connection.a_to_b.id
  }

  tags = {
    Name    = "ewb-rt-b-private"
    Project = var.project_name
  }
}

# Associate public route table with public subnet
resource "aws_route_table_association" "a_public" {
  subnet_id      = aws_subnet.a_public.id
  route_table_id = aws_route_table.a_public.id
}

# Associate private route table with App-A subnet
resource "aws_route_table_association" "a_private" {
  subnet_id      = aws_subnet.a_private.id
  route_table_id = aws_route_table.a_private.id
}

# Associate private route table with App-B subnet
resource "aws_route_table_association" "b_private" {
  subnet_id      = aws_subnet.b_private.id
  route_table_id = aws_route_table.b_private.id
}
