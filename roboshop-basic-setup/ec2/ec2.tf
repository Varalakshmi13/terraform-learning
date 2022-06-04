resource "aws_spot_instance_request" "cheap_worker" {
  ami           = "data.aws_ami.ami.image_id"
  instance_type = "t3.micro"
  wait_for_fulfillment = true

  tags = {
    Name = var.COMPONENT
  }
}

  provisioner "REMOTE-EXEC" {
    connection {
      host = self.public_ip
      user = "centos"
      password = "DevOps321"
    }
    inline = [
      "ansible-pul -U https://github.com/Varalakshmi13/ansible.git roboshop.yml -e HOST=localhost -e role_name=DevOps321 -e ENV=dev -e APP_VERSION=$"
    ]

  }