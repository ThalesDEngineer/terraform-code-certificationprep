

resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # WARNING: This allows SSH access from any IP. Consider restricting it.
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "example" {
  ami                    = "ami-01103fb68b3569475"
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.generated_key.key_name
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  tags = {
    Name = "ExampleInstance"
  }

  connection {
    type        = "ssh"
    host        = self.public_ip
    user        = "ec2-user" # or "ubuntu", "admin", etc., depending on the AMI
    private_key = tls_private_key.example.private_key_pem
    timeout     = "2m"
    agent       = false
  }

  provisioner "remote-exec" {
    inline = [
      "echo 'Hello, Earth!' > /home/ec2-user/hello.txt"
    ]
  }
}
