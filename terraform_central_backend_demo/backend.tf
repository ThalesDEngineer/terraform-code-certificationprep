terraform {
  backend "s3" {
    bucket = "terraform-state-demo-td"
    key    = "network/terraform.tfstate"
    region = "us-east-2"
  }
}