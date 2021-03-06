resource "aws_spot_instance_request" "cheap_worker" {
  ami                     = data.aws_ami.ami.image_id
  instance_type           = "t3.micro"
  wait_for_fulfillment    = true
  vpc_security_group_ids  = [aws_security_group.allow_all.id]

  tags = {
    Name = var.COMPONENT
  }

}

resource "null_resource" "null" {
  provisioner "remote-exec" {
    connection {
      host      = aws_spot_instance_request.cheap_worker.public_ip
      user      = "centos"
      password  = "DevOps321"
    }
    inline = [
      "ansible-pull -U https://github.com/Varalakshmi13/ansible.git roboshop.yml -e HOST=localhost -e role_name=${var.COMPONENT} -e ENV=dev -e APP_VERSION=${var.APP_VERSION}"
    ]
  }
}  

resource "aws_ec2_tag" "tag" {
  resource_id  = aws_spot_instance_request.cheap_worker.spot_instance_id
  key          = "Name"
  value        =  var.COMPONENT
}