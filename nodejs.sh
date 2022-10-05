#! /bin/bash
# nodejs
sudo amazon-linux-extras enable docker
sudo yum install -y git docker
sudo git init
sudo git clone https://github.com/kangbock/project.git
sudo systemctl restart docker
sudo systemctl enable docker
sudo docker build -t nodejs:lkb project/nodejs/.
sudo docker run -itd --name j1 -p 3000:3000 nodejs:lkb