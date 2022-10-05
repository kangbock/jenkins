resource "aws_route_table" "lkb_rt" {
  vpc_id = aws_vpc.lkb_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.lkb_igw.id

  }
  tags = {
    "Name" = "lkb-rt"
  }
}
