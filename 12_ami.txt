resource "aws_ami_from_instance" "lkb_ami_1" {
  name               = "lkb-ami-1"
  source_instance_id = aws_instance.lkb_ec2_web.id
  snapshot_without_reboot = true
  depends_on = [
    aws_db_instance.lkb_rds
  ]
}

resource "aws_ami_from_instance" "lkb_ami_2" {
  name               = "lkb-ami-2"
  snapshot_without_reboot = true
  source_instance_id = aws_instance.lkb_ec2_was.id
  depends_on = [
    aws_db_instance.lkb_rds
  ]
}