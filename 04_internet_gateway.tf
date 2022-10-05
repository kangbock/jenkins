resource "aws_internet_gateway" "lkb_igw" {
  vpc_id = aws_vpc.lkb_vpc.id

  tags = {
    Name = "lkb-igw"
  }
}
