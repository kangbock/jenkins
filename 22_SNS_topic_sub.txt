resource "aws_sns_topic_subscription" "lkb_topic_sub" {
  topic_arn = aws_sns_topic.lkb_topic.arn
  protocol  = "email"
  endpoint  = "kangbock0827@naver.com"
}

resource "aws_sns_topic_subscription" "ksg_topic_sub" {
  topic_arn = aws_sns_topic.lkb_topic.arn
  protocol  = "email"
  endpoint  = "ukk061771@gmail.com"
}

resource "aws_sns_topic_subscription" "hcw_topic_sub" {
  topic_arn = aws_sns_topic.lkb_topic.arn
  protocol  = "email"
  endpoint  = "88hcw@naver.com"
}