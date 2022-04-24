provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "sample" {
  ami                    = "ami-0ebf45e675775a651"
  instance_type          = "t3.micro"
}

output "public_ip" {
  value = aws_instance.sample.public_ip
}