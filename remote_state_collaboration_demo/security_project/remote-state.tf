data "terraform_remote_state" "eip" {
  backend = "s3"

  config = {
    bucket = "terraform-state-demo-td"
    key    = "network/eip.tfstate"
    region = "us-east-2"
    }
  }