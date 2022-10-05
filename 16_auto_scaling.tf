resource "aws_launch_configuration" "lkb_auto_scaling_web" {
  name                 = "lkb-auto-scaling-web"
  image_id             = aws_ami_from_instance.lkb_ami_1.id
  associate_public_ip_address = true
  instance_type        = "t2.micro"
  iam_instance_profile = "admin_role"
  security_groups      = [aws_security_group.lkb_sec.id]
  key_name             = aws_key_pair.lkb_key.id
  user_data = file("n1start.sh")
}
resource "aws_launch_configuration" "lkb_auto_scaling_was" {
  name                 = "lkb-auto-scaling-was"
  image_id             = aws_ami_from_instance.lkb_ami_2.id
  instance_type        = "t2.micro"
  iam_instance_profile = "admin_role"
  security_groups      = [aws_security_group.lkb_sec.id]
  key_name             = aws_key_pair.lkb_key.id
  user_data = file("j1start.sh")
}

