provider "aws" {
  region     =  "us-east-2"
}

provider "aws" {
  alias      =  "aws01"
  region     =  "us-east-1"
}