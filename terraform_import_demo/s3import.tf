# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "import-tf-bucket-test-td"
resource "aws_s3_bucket" "s3import" {
  bucket              = "import-tf-bucket-test-td"
  bucket_prefix       = null
  force_destroy       = null
  object_lock_enabled = false
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
