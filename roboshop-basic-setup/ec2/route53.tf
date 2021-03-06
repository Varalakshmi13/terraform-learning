resource "aws_route53_record" "component" {
  zone_id = "Z09784143BCBMRC031S8X"
  name    = "${var.COMPONENT}-dev.roboshop.internal"
  type    = "A"
  ttl     = "300"
  records = [aws_spot_instance_request.cheap_worker.private_ip]
}