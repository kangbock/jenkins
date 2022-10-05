resource "aws_subnet" "lkb_web_a" {
  vpc_id            = aws_vpc.lkb_vpc.id
  cidr_block        = "10.0.0.0/24"
  availability_zone = "ap-northeast-2a"
  tags = {
    "Name" = "lkb-web-a"
  }
}
resource "aws_subnet" "lkb_web_c" {
  vpc_id            = aws_vpc.lkb_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "ap-northeast-2c"
  tags = {
    "Name" = "lkb-web-c"
  }
}

resource "aws_subnet" "lkb_was_a" {
  vpc_id            = aws_vpc.lkb_vpc.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "ap-northeast-2a"
  tags = {
    "Name" = "lkb-was-a"
  }
}
resource "aws_subnet" "lkb_was_c" {
  vpc_id            = aws_vpc.lkb_vpc.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "ap-northeast-2c"
  tags = {
    "Name" = "lkb-was-c"
  }
}

resource "aws_subnet" "lkb_db_a" {
  vpc_id            = aws_vpc.lkb_vpc.id
  cidr_block        = "10.0.4.0/24"
  availability_zone = "ap-northeast-2a"
  tags = {
    "Name" = "lkb-db-a"
  }
}
resource "aws_subnet" "lkb_db_c" {
  vpc_id            = aws_vpc.lkb_vpc.id
  cidr_block        = "10.0.5.0/24"
  availability_zone = "ap-northeast-2c"
  tags = {
    "Name" = "lkb-db-c"
  }
}
