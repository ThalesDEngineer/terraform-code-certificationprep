provider "aws" {
  region     = "us-east-2"
}

resource "aws_eip" "lb" {
  domain   = "vpc"
}

output "public_ip" {
  value = aws_eip.lb.public_ip
}