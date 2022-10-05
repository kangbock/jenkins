#클러스터 단위
resource "aws_placement_group" "lkb_pg" {
  name     = "lkb-pg"
  strategy = "cluster"
}

resource "aws_autoscaling_group" "lkb_AS_group_web" {
  name                      = "lkb-AS-group-web"
  min_size                  = 0
  max_size                  = 5
  health_check_grace_period = 90
  health_check_type         = "EC2"
  desired_capacity          = 0
  force_delete              = false
  launch_configuration      = aws_launch_configuration.lkb_auto_scaling_web.name
  vpc_zone_identifier       = [aws_subnet.lkb_web_a.id, aws_subnet.lkb_web_c.id]
}

resource "aws_autoscaling_group" "lkb_AS_group_was" {
  name                      = "lkb-AS-group-was"
  min_size                  = 1
  max_size                  = 5
  health_check_grace_period = 90
  health_check_type         = "EC2"
  desired_capacity          = 1
  force_delete              = false
  launch_configuration      = aws_launch_configuration.lkb_auto_scaling_was.name
  vpc_zone_identifier       = [aws_subnet.lkb_was_a.id, aws_subnet.lkb_was_c.id]
}