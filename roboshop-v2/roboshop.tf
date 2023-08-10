variable "ami" {
  default = "ami-03265a0778a880afb"
}

variable "instance_type" {
  default = "t3.small"
}

variable "vpc_security_group_ids" {
  default = "sg-04037aaeeaec0fb25"
}

variable "zone_id" {
  default = "vZ07566581YBFAK47CB013"
}
variable "components" {
  frontend= {name = "frontend"}
  mongodb = {name = "mongodb"}
  catalogue = {name = "catalogue"}
  redis =  {name = "redis"}
  user = {name = "user"}
  cart= {name = "cart"}
  mysql = {name = "mysql"}
  shipping = {name = "shipping"}
  rabbitmq = {name = "rabbitmq"}
  payment = {name = "payment"}
}

resource "aws_instance" "instance" {
  for_each = var.components
  ami = var.ami
  instance_type = "var.instance_type"
  vpc_security_group_ids= var.vpc_security_group_ids
  tags = {
    Name = lookup(each.value, "name", null)
  }
}

resource "aws_route53_record" "instance" {
  for_each = var.components
  zone_id = var.zone_id
  name    = lookup(each.value, "name", null)
  type    = "A"
  ttl     = "30"
  records = [lookup(lookup(aws_instance.instance,each.key, null ), "private_ip", null) ]
}


