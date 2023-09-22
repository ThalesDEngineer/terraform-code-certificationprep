resource "aws_security_group" "sg-us-east-2" {
  name        = "demo-us-east-2"
  description = "Default security group"

  # By default, no ingress (incoming) rules are set
  # ingress {
  #   from_port   = 0
  #   to_port     = 0
  #   protocol    = "-1"
  #   cidr_blocks = ["0.0.0.0/0"]
  # }

  # By default, no egress (outgoing) rules are set
  # egress {
  #   from_port   = 0
  #   to_port     = 0
  #   protocol    = "-1"
  #   cidr_blocks = ["0.0.0.0/0"]
  # }

  tags = {
    Name = "us-east-2"
  }
}

resource "aws_security_group" "us-east-1" {
  name        = "demo-us-east-1"
  description = "Default security group"

  # By default, no ingress (incoming) rules are set
  # ingress {
  #   from_port   = 0
  #   to_port     = 0
  #   protocol    = "-1"
  #   cidr_blocks = ["0.0.0.0/0"]
  # }

  # By default, no egress (outgoing) rules are set
  # egress {
  #   from_port   = 0
  #   to_port     = 0
  #   protocol    = "-1"
  #   cidr_blocks = ["0.0.0.0/0"]
  # }

  tags = {
    Name = "us-east-1"
  }
  provider = aws.aws01
}