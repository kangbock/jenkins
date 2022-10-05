resource "aws_lb_listener" "lkb_ALB_li_web" {
  load_balancer_arn = aws_alb.lkb_ALB_web.arn
  port              = 80
  protocol          = "HTTP"
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.lkb_tg_web.id
  }
}

resource "aws_lb_listener" "lkb_ALB_li_was" {
  load_balancer_arn = aws_alb.lkb_ALB_was.arn
  port              = 3000
  protocol          = "HTTP"
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.lkb_tg_was.id
  }
}