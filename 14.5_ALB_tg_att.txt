resource "aws_alb_target_group_attachment" "lkb_tg_att_web" {
  target_group_arn = aws_lb_target_group.lkb_tg_web.arn
  target_id = aws_instance.lkb_ec2_web.id
  port = 80
}

resource "aws_alb_target_group_attachment" "lkb_tg_att_was" {
  target_group_arn = aws_lb_target_group.lkb_tg_was.arn
  target_id = aws_instance.lkb_ec2_was.id
  port = 3000
}