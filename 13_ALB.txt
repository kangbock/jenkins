resource "aws_alb" "lkb_ALB_web" {
  name            = "lkb-alb-web"
  internal        = false
  security_groups = [aws_security_group.lkb_sec.id]
  subnets         = [aws_subnet.lkb_web_a.id, aws_subnet.lkb_web_c.id]

  tags = {
    "Name" = "lkb-alb-web"
  }

}

resource "aws_alb" "lkb_ALB_was" {
  name            = "lkb-alb-was"
  internal        = true
  security_groups = [aws_security_group.lkb_sec.id]
  subnets         = [aws_subnet.lkb_was_a.id, aws_subnet.lkb_was_c.id]

  tags = {
    "Name" = "lkb-alb-was"
  }

}

output "dns_name_web" {
  value = aws_alb.lkb_ALB_web.dns_name
}

output "dns_name_was" {
  value = aws_alb.lkb_ALB_was.dns_name
}