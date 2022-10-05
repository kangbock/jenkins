resource "aws_autoscaling_attachment" "lkb_AS_att_web" {
  autoscaling_group_name = aws_autoscaling_group.lkb_AS_group_web.id
  lb_target_group_arn = aws_lb_target_group.lkb_tg_web.arn
}

resource "aws_autoscaling_attachment" "lkb_AS_att_was" {
  autoscaling_group_name = aws_autoscaling_group.lkb_AS_group_was.id
  lb_target_group_arn = aws_lb_target_group.lkb_tg_was.arn
}