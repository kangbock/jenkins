resource "aws_route_table" "lkb_nrt" {
  vpc_id = aws_vpc.lkb_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.lkb_ngw.id
  }
  tags = {
    "Name" = "lkb-nrt"
  }
}
