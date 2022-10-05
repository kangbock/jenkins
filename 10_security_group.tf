resource "aws_security_group" "lkb_sec" {
  name        = "lkb-sec"
  description = "Allow 21,22,80,3306,icmp"
  vpc_id      = aws_vpc.lkb_vpc.id

  ingress = [
    {
      description      = "FTP"
      from_port        = 21
      to_port          = 21
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
      protocol         = "tcp"
      prefix_list_ids  = null
      security_groups  = null
      self             = null
    },
    {
      description      = "FTP-DATA"
      from_port        = 65000
      to_port          = 65100
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
      protocol         = "tcp"
      prefix_list_ids  = null
      security_groups  = null
      self             = null
    },
    {
      description      = "MYSQL"
      from_port        = 3306
      to_port          = 3306
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
      protocol         = "tcp"
      prefix_list_ids  = null
      security_groups  = null
      self             = null
    },
    {
      description      = "ICMP"
      from_port        = -1
      to_port          = -1
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
      protocol         = "ICMP"
      prefix_list_ids  = null
      security_groups  = null
      self             = null
    },
    {
      description      = "HTTP"
      from_port        = 80
      to_port          = 80
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
      protocol         = "tcp"
      prefix_list_ids  = null
      security_groups  = null
      self             = null
    },
        {
      description      = "HTTP"
      from_port        = 3000
      to_port          = 3000
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
      protocol         = "tcp"
      prefix_list_ids  = null
      security_groups  = null
      self             = null
    },
    {
      description      = "SSH"
      from_port        = 22
      to_port          = 22
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
      protocol         = "tcp"
      prefix_list_ids  = null
      security_groups  = null
      self             = null
    },
    {
      description      = "ALLL Traffic"
      from_port        = 0
      to_port          = 0
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
      protocol         = -1
      prefix_list_ids  = null
      security_groups  = null
      self             = null
    },
    {
      description      = "DNS"
      from_port        = 53
      to_port          = 53
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
      protocol         = "tcp"
      prefix_list_ids  = null
      security_groups  = null
      self             = null
    },    
    {
      description      = "DNS"
      from_port        = 53
      to_port          = 53
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
      protocol         = "udp"
      prefix_list_ids  = null
      security_groups  = null
      self             = null
    },

  ]

  egress = [
    {
      description      = "All Traffic"
      from_port        = 0
      to_port          = 0
      protocol         = -1
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
      prefix_list_ids  = null
      security_groups  = null
      self             = null
    }
  ]

  tags = {
    "Name" = "lkb-sec"
  }


}
