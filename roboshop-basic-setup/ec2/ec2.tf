resource "aws_spot_instance_request" "cheap_worker" {
  ami           = "data.aws_ami.ami.image_id"
  instance_type = "t3.micro"
  wait_for_fulfillment = true

  tags = {
    Name = "CheapWorker"
  }
}
