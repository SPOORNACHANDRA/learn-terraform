resource "aws_instance" "instances" {
  ami                    = data.aws_ami.ami.id
  instance_type          = var.instance_type
  vpc_security_group_ids = var.security_groups
  tags                   = {
    Name = var.name
  }
  provisioner "local-exec" {
    command = "sleep 60"
  }
}

resource "aws_route53_record" "record" {
  zone_id = var.zone_id
  name    = "${var.name}-dev.poornadevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.instances.private_ip]
}






