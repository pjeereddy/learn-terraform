resource "aws_instance" "instance" {

  ami = data.aws_ami.machine.id
  instance_type = var.instance_type
  vpc_security_group_ids= var.security_groups
  tags = {
    Name = var.name
  }
}

resource "aws_route53_record" "instance" {

  zone_id = var.zone_id
  name    = "${var.name}-dev.jdevops74.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.instance.private_ip ]
}





