data "aws_ami" "ami" {
  most_recent = true
  name_regex = "centos-*"
  owners           = ["973714476881"]
}

output "ami" {
  value = data.aws_ami.ami
}



resource "aws_instance" "instance" {
  ami           = data.aws_ami.ami
  instance_type = var.instance_type
  vpc_security_group_ids = [ "sg-0d8a6e86b202c9281" ]
}


variable "instance_type" {}