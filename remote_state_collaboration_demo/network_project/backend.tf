terraform {
  backend "s3" {
    bucket = "terraform-state-demo-td"
    key    = "network/eip.tfstate"
    region = "us-east-2"
  }
}