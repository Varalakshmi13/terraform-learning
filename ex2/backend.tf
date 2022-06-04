terraform {
  backend "s3" {
    bucket = "terraform-gvl"
    key    = "ex2/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}



