terraform {
  backend "s3" {
    bucket = "terraform-gvl"
    key    = "roboshop-basic-setup/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}