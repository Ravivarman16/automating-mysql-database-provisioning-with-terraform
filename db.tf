# 1.Providing aws details:

provider "aws" {
  profile = "default"
  region  = "us-east-2"
}

# 2.Creating security group database:
resource "aws_security_group" "database-sc" {
  name        = "database-sc"
  description = "security group for database"

  # Allow mysql database (port 3306) from anywhere
  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["172.31.0.0/16"]
  }

  # Egress rules (outbound traffic)
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "database-sc"
  }
}

#3.Creating mysql database:
resource "aws_db_instance" "database-mysql" {
  identifier             = "terraform-db"
  allocated_storage      = 20
  storage_type           = "gp2"
  db_name                = "terraformdb"
  engine                 = "mysql"
  engine_version         = "5.7"
  instance_class         = "db.t2.micro"
  username               = "admin"
  password               = "nodejs123"
  parameter_group_name   = "default.mysql5.7"
  availability_zone      = "us-east-2c"
  skip_final_snapshot    = true
  vpc_security_group_ids = ["${aws_security_group.database-sc.id}"]
  tags = {
    Name = "terraform-db"
  }
}

#4. Getting the output of mysql database:
output "rds_endpoint" {
  value = aws_db_instance.database-mysql.endpoint
}
