resource "aws_lb_target_group" "lkb_tg_web" {
  name     = "lkb-tg-web"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.lkb_vpc.id

  health_check {
    enabled             = true
    healthy_threshold   = 3
    interval            = 5
    matcher             = "200"
    path                = "/health.html"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = 2
    unhealthy_threshold = 3
  }
}

resource "aws_lb_target_group" "lkb_tg_was" {
  name     = "lkb-tg-was"
  port     = 3000
  protocol = "HTTP"
  vpc_id   = aws_vpc.lkb_vpc.id

  stickiness {
    enabled = true
    type = "lb_cookie"
  }

  health_check {
    enabled             = true
    healthy_threshold   = 3
    interval            = 5
    matcher             = "200"
    path                = "/health.html"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = 2
    unhealthy_threshold = 3
  }
}
