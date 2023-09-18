provider "aws" {
  region = "us-east-2"
}

resource "tls_private_key" "example" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "generated_key" {
  key_name   = "example_key_pair"
  public_key = tls_private_key.example.public_key_openssh
}