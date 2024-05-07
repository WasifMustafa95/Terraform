# RDS PostgreSQL
resource "aws_db_instance" "postgresql_db" {
  allocated_storage    = 20
  engine               = "postgres"
  instance_class       = "db.t3.micro"
  identifier           = "postgresql-db-was"
  username             = "postgres"
  password             = "admin123"
  publicly_accessible = true
  vpc_security_group_ids = [aws_security_group.postgresql_sg.id]
}

# RDS MySQL
resource "aws_db_instance" "mysql_db" {
  allocated_storage    = 20
  engine               = "mysql"
  instance_class       = "db.t3.micro"
  identifier           = "mysql-db-was"
  username             = "admin"
  password             = "admin123"
  publicly_accessible = true
  vpc_security_group_ids = [aws_security_group.mysql_sg.id]
}