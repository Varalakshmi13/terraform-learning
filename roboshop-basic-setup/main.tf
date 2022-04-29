module "frontend" {
  source = "./ec2"
  sg     = module.sg.sg_id
}
