resource "aws_iam_user" "janesmith" {
  name = "janesmith"
  path = "/"  # Optional path. Adjust if needed.
  
  tags = {
    Name = "janesmith"
    Role = "Developer"  # Add/modify tags as necessary
  }
}