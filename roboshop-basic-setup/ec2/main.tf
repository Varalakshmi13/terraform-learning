resource "aws_spot_instance_request" "cheap_worker" {
  ami                    = data.aws_ami.ami.image_id
  instance_type          = "t3.micro"
  wait_for_fulfillment   = true
  vpc_security_group_ids = [aws_security_group.allow_all.id]

  tags = {
    Name = var.COMPONENT
  }