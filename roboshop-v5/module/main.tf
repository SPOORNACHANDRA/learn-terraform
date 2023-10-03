resource "aws_instance" "instances" {
  ami                    = data.aws_ami.ami.id
  instance_type          = var.instance_type
  vpc_security_group_ids =var.security_groups
  tags                   ={
    Name = var.name
  }
}


resource "aws_route53_record" "record" {
  zone_id = var.zone_id
  name    = "${var.name}-dev.poornadevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.instances.private_ip]
}
resource "null_resource" "ansible" {

  depends_on = [

  aws_route53_record.record

  ]

  provisioner "local-exec" {
    command=<<eof
cd/home/centos/roboshop-ansible
git pull
sleep 30
become : true
ansible-playbook -i ${var.name}-dev.poornadevops.online, main.yml -e ansible_user=centos -e Ansible_password=DevOps321 -b -e component= ${var.name}
eof
  }
}








