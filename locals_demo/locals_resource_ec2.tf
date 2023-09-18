provider "aws" {
  region     = "us-east-2"
}

module "ec2module" {
  source = "./modules/sg"
}