resource "aws_instance" "lkb_ec2_web" {
  ami = "ami-0e1d09d8b7c751816"
  instance_type = "t2.micro"
  key_name = "lkb1"
  vpc_security_group_ids = [aws_security_group.lkb_sec.id]
  availability_zone = "ap-northeast-2a"
  subnet_id = aws_subnet.lkb_web_a.id
  associate_public_ip_address = true
  user_data = <<-EOF
  #! /bin/bash
  # nginx
  sudo amazon-linux-extras enable docker
  sudo yum install -y git docker
  sudo git init
  sudo git clone https://github.com/kangbock/project.git
  sudo systemctl restart docker
  sudo systemctl enable docker
  sudo sed -i '11 s/node.kb97.xyz:3000/${aws_alb.lkb_ALB_was.dns_name}:3000/g' /project/nginx/default.conf
  sudo docker build -t nginx:lkb project/nginx/.
  sudo docker run -itd --name n1 -p 80:80 nginx:lkb
  sudo sh /project/nginx/mysql.sh
  EOF
  tags = {
    "Name" = "lkb-web"
  }
}

resource "aws_instance" "lkb_ec2_was" {
  ami = "ami-0633fb238d7de0f95"
  instance_type = "t2.micro"
  key_name = "lkb1"
  vpc_security_group_ids = [aws_security_group.lkb_sec.id]
  availability_zone = "ap-northeast-2a"
  subnet_id = aws_subnet.lkb_was_a.id
  associate_public_ip_address = true
  user_data = file("nodejs.sh")
  tags = {
    "Name" = "lkb-was"
  }
}

resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.lkb_ec2_web.id
  allocation_id = "eipalloc-032ef54d52046d357"
}

output "public_ip" {
  value = aws_instance.lkb_ec2_web.public_ip
}