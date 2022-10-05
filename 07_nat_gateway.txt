resource "aws_eip" "lkb_nat_eip" {
  vpc = true
}

resource "aws_nat_gateway" "lkb_ngw" {
  allocation_id = aws_eip.lkb_nat_eip.id
  subnet_id     = aws_subnet.lkb_web_a.id
  tags = {
    "Name" = "lkb-ngw"
  }
  depends_on = [
    aws_internet_gateway.lkb_igw
  ]
}
