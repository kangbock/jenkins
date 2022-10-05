resource "aws_autoscaling_policy" "lkb_AS_web_policy" {
  name                   = "lkb-AS-web-policy"
  policy_type            = "TargetTrackingScaling"
  autoscaling_group_name = aws_autoscaling_group.lkb_AS_group_web.name

  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }

    target_value = 30.0
  }
}

resource "aws_autoscaling_policy" "lkb_AS_was_policy" {
  name                   = "lkb-AS-was-policy"
  policy_type            = "TargetTrackingScaling"
  autoscaling_group_name = aws_autoscaling_group.lkb_AS_group_was.name

  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }

    target_value = 30.0
  }
}