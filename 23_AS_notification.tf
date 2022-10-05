resource "aws_autoscaling_notification" "lkb_notifications_web" {
  group_names = [
    aws_autoscaling_group.lkb_AS_group_web.id
  ]

  notifications = [
    "autoscaling:EC2_INSTANCE_LAUNCH",
    "autoscaling:EC2_INSTANCE_TERMINATE",
    "autoscaling:EC2_INSTANCE_LAUNCH_ERROR",
    "autoscaling:EC2_INSTANCE_TERMINATE_ERROR",
  ]

  topic_arn = aws_sns_topic.lkb_topic.arn
}

resource "aws_autoscaling_notification" "lkb_notifications_was" {
  group_names = [
    aws_autoscaling_group.lkb_AS_group_was.id
  ]

  notifications = [
    "autoscaling:EC2_INSTANCE_LAUNCH",
    "autoscaling:EC2_INSTANCE_TERMINATE",
    "autoscaling:EC2_INSTANCE_LAUNCH_ERROR",
    "autoscaling:EC2_INSTANCE_TERMINATE_ERROR",
  ]

  topic_arn = aws_sns_topic.lkb_topic.arn
}