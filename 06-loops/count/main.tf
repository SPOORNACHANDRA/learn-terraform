variable "components" {
  default = ["frontend", "mondodb"]
}

resource "aws_instance" "instance" {

  count = length(var.components)

  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-0d8a6e86b202c9281" ]

  tags = {
    // Name = var.components[count.index]
    Name = element(var.components[count.index])
  }
}