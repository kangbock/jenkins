resource "aws_route_table_association" "lkb_nat_ass_was_a" {
    subnet_id =   aws_subnet.lkb_was_a.id
    route_table_id = aws_route_table.lkb_nrt.id
}
resource "aws_route_table_association" "lkb_nat_ass_was_c" {
    subnet_id =   aws_subnet.lkb_was_c.id
    route_table_id = aws_route_table.lkb_nrt.id
}
resource "aws_route_table_association" "lkb_nat_ass_db_a" {
    subnet_id =   aws_subnet.lkb_db_a.id
    route_table_id = aws_route_table.lkb_nrt.id
}
resource "aws_route_table_association" "lkb_nat_ass_db_c" {
    subnet_id =   aws_subnet.lkb_db_c.id
    route_table_id = aws_route_table.lkb_nrt.id
}