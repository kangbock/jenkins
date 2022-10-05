resource "aws_db_subnet_group" "lkb_db_sg" {
  name       = "lkb-db-sg"
  subnet_ids = [aws_subnet.lkb_db_a.id, aws_subnet.lkb_db_c.id]

  tags = {
    Name = "lkb-db-sg"
  }
}

resource "aws_db_instance" "lkb_rds" {
  allocated_storage      = 20
  storage_type           = "gp2"
  engine                 = "mysql"
  engine_version         = "5.7.34"
  instance_class         = "db.t2.micro"
  name                   = "project"
  identifier             = "mydb"
  username               = "root"
  password               = "It12345!"
  parameter_group_name   = "default.mysql5.7"
  availability_zone      = "ap-northeast-2a"
  db_subnet_group_name   = aws_db_subnet_group.lkb_db_sg.id
  vpc_security_group_ids = [aws_security_group.lkb_sec.id]
  skip_final_snapshot    = true
  tags = {
    "Name" = "lkb-db"
  }
}