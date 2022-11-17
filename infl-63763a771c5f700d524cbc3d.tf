resource "aws_route_table" "PublicSubnets-177" {
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-0cdd720cb6a8b10a3"
  }
  tags = {
    Name    = "Public Subnets"
    Network = "Public"
  }
  vpc_id = "vpc-0bbebdf9568d0bef8"
}




resource "aws_route_table" "Privatesubnet2A-0e5" {
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = "nat-017333f2d427f3d30"
  }
  tags = {
    Name    = "Private subnet 2A"
    Network = "Private"
  }
  vpc_id = "vpc-0bbebdf9568d0bef8"
}




resource "aws_route_table" "Privatesubnet1A-e39" {
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = "nat-06f155e55a6656e00"
  }
  tags = {
    Name    = "Private subnet 1A"
    Network = "Private"
  }
  vpc_id = "vpc-0bbebdf9568d0bef8"
}

