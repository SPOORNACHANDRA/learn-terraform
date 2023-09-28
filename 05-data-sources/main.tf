data "aws_ami_ids" "ami" {
  executable_users = "centos-*"
  owners           = ["973714476881"]
}

output "ami" {
  value = data.aws_ami_ids.ami
}