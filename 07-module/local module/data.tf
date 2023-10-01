data "aws_ami_ids" "ami" {
  name_regex = "centos-*"
  owners           = ["973714476881"]
}

output "ami" {
  value = data.aws_ami_ids.ami
}



resource "aws_instance" "instance" {
  ami           = data.aws_ami_ids.ami[0]
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-0d8a6e86b202c9281" ]
}