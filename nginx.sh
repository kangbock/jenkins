#! /bin/bash
# nginx
sudo amazon-linux-extras enable docker
sudo yum install -y git docker
sudo git init
sudo git clone https://github.com/kangbock/project.git
sudo systemctl restart docker
sudo systemctl enable docker
sudo docker build -t nginx:lkb project/nginx/.
sudo docker run -itd --name n1 -p 80:80 nginx:lkb