resource "aws_instance" "lkb_ec2_web" {
  ami = "ami-0e1d09d8b7c751816"
  instance_type = "t2.micro"
  key_name = "lkb-key"
  vpc_security_group_ids = [aws_security_group.lkb_sec.id]
  availability_zone = "ap-northeast-2a"
  subnet_id = aws_subnet.lkb_web_a.id
  associate_public_ip_address = true

  user_data = <<-EOF
#! /bin/bash
sudo amazon-linux-extras enable docker
sudo yum install -y git docker
sudo git init
sudo git clone https://github.com/kangbock/jenkins2.git
sudo systemctl restart docker
sudo systemctl enable docker
sudo docker build -t nginx:lkb jenkins2/nginx/.
sudo docker run -itd --name n1 -p 80:80 nginx:lkb
sudo docker build -t nodejs:lkb jenkins2/nodejs/.
sudo docker run -itd --name j1 -p 3000:3000 nodejs:lkb
sudo docker run -d --name db -e MYSQL_ROOT_PASSWORD=It1 -e MYSQL_PASSWORD=It1 mysql:5.7
sudo sh /jenkins2/nginx/mysql.sh
sudo docker pull jenkins:2.60.3
sudo docker run -itd -p 8080:8080 --name jenkins jenkins:2.60.3
  EOF

  tags = {
    "Name" = "lkb-web"
  }
}

/*
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
*/

resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.lkb_ec2_web.id
  allocation_id = "eipalloc-038a41f7d98082250"
}

output "public_ip" {
  value = aws_instance.lkb_ec2_web.public_ip
}