provider "aws" {
  region = "us-east-2" # Change this to your desired AWS region
}

resource "aws_db_instance" "sql_server_express_instance" {
  allocated_storage   = 20
  storage_type        = "gp2"
  engine              = "sqlserver-ex"
  engine_version      = "14.00.3460.9.v1"
  instance_class      = "db.t2.micro"
  username            = "admin"
  password            = "Fr56MKVkfPf3#1ON"
  skip_final_snapshot = true
  license_model       = "license-included"
  multi_az            = false

  # Ensure this is set to true for free-tier usage
  apply_immediately = true

  tags = {
    Name = "sqlserverssis"
  }
}

output "rds_endpoint" {
  value = aws_db_instance.sql_server_express_instance.endpoint
}