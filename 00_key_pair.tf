resource "aws_key_pair" "lkb_key" {
  key_name = "lkb-key"
  public_key = file("../../../Users/kb97/.ssh/lkb1.pub")
}
