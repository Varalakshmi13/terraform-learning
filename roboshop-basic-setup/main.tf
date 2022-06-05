module "component" {
  for_each = var.ALL_COMPONENTS
  source = "./ec2"
  COMPONENT = each.key
  APP_VERSION = each.value.app_version
}

# resource "null_resource" "sample" {
#   count = length(var.ALL_COMPONENTS)
#   provisioner "local-exec" {
#     command = <<EOF
#     echo ${lookup(var.ALL_COMPONENTS[count.index], COMPONENT, null)}
#     EOF
#   }
# }
