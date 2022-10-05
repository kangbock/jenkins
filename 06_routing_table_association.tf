resource "aws_route_table_association" "lkb_rtass_web_a" {
  subnet_id      = aws_subnet.lkb_web_a.id
  route_table_id = aws_route_table.lkb_rt.id
}

resource "aws_route_table_association" "lkb_rtass_web_c" {
  subnet_id      = aws_subnet.lkb_web_c.id
  route_table_id = aws_route_table.lkb_rt.id
}
