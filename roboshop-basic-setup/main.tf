module "frontend" {
  count   = length(var.COMPONENTS)
  source = "./ec2"
  COMPONENT = var.COMPONENTS[count.index]
  APP_VERSION = "1.0.0"
}
