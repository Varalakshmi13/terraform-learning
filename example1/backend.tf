terraform {
  backend "s3" {
    bucket = "terraform-gvl"
    key    = "example1/terraform.tfstate"
    region = "us-east-1"
  }
}