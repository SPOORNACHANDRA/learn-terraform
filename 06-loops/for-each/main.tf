#variable "components" {
#  default = {
#    catalogue = { name = "catalogue_sg" }
#    mongodb = { name = "mongodb_sg" }
#  }
#}
#
#
#resource "aws_security_group" "allow_tls" {
# for_each = var.components
#  name = lookup(var.components,each.value["name"],null )
#}
#
#

variable "component" {
  default = {
    cat = {
      name = "catalogue_sg"
    }
    mon = {
      name = "mongodb"
    }
  }
}

resource "aws_instance" "instances" {
  for_each = var.component
  ami                    = "ami-03265a0778a880afb"
  instance_type          = "t3.small"
  vpc_security_group_ids = ["sg-0d8a6e86b202c9281"]
  tags                   = {
    Name = lookup(var.component,each.value["name"],null )
  }
}