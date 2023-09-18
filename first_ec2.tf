provider "aws" {
  region     = "us-east-2"
}

resource "aws_instance" "web" {
  ami           = "ami-0cf0e376c672104d6"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}