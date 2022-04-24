terraform {
  backend "s3" {
    bucket = "terraform-gvl"
    key    = "ex1/terraform.tfstate"
    region = "us-east-1"
  }
}