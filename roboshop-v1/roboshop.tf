resource "aws_instance" "frontend" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids= ["sg-04037aaeeaec0fb25"]
  tags = {
    Name = "frontend"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z07566581YBFAK47CB013"
  name    = "frontend-dev.jdevops74.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "mongodb" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids= ["sg-04037aaeeaec0fb25"]
  tags = {
    Name = "mongodb"
  }
}

resource "aws_route53_record" "mongodb" {
  zone_id = "Z07566581YBFAK47CB013"
  name    = "mongodb-dev.jdevops74.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.mongodb.private_ip]
}

resource "aws_instance" "catalogue" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids= ["sg-04037aaeeaec0fb25"]
  tags = {
    Name = "catalogue"
  }
}

resource "aws_route53_record" "catalogue" {
  zone_id = "Z07566581YBFAK47CB013"
  name    = "catalogue-dev.jdevops74.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.catalogue.private_ip]
}


resource "aws_instance" "redis" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids= ["sg-04037aaeeaec0fb25"]
  tags = {
    Name = "redis"
  }
}

resource "aws_route53_record" "redis" {
  zone_id = "Z07566581YBFAK47CB013"
  name    = "redis-dev.jdevops74.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.redis.private_ip]
}

resource "aws_instance" "user" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids= ["sg-04037aaeeaec0fb25"]
  tags = {
    Name = "user"
  }
}

resource "aws_route53_record" "user" {
  zone_id = "Z07566581YBFAK47CB013"
  name    = "user-dev.jdevops74.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.user.private_ip]
}

resource "aws_instance" "cart" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids= ["sg-04037aaeeaec0fb25"]
  tags = {
    Name = "cart"
  }
}

resource "aws_route53_record" "cart" {
  zone_id = "Z07566581YBFAK47CB013"
  name    = "cart-dev.jdevops74.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.cart.private_ip]
}


resource "aws_instance" "mysql" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids= ["sg-04037aaeeaec0fb25"]
  tags = {
    Name = "mysql"
  }
}

resource "aws_route53_record" "mysql" {
  zone_id = "Z07566581YBFAK47CB013"
  name    = "mysql-dev.jdevops74.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.mysql.private_ip]
}

resource "aws_instance" "shipping" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids= ["sg-04037aaeeaec0fb25"]
  tags = {
    Name = "shipping"
  }
}

resource "aws_route53_record" "shipping" {
  zone_id = "Z07566581YBFAK47CB013"
  name    = "shipping-dev.jdevops74.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.shipping.private_ip]
}

resource "aws_instance" "rabbitmq" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids= ["sg-04037aaeeaec0fb25"]
  tags = {
    Name = "rabbitmq"
  }
}

resource "aws_route53_record" "rabbitmq" {
  zone_id = "Z07566581YBFAK47CB013"
  name    = "rabbitmq-dev.jdevops74.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.rabbitmq.private_ip]
}


resource "aws_instance" "payment" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids= ["sg-04037aaeeaec0fb25"]
  tags = {
    Name = "payment"
  }
}

resource "aws_route53_record" "payment" {
  zone_id = "Z07566581YBFAK47CB013"
  name    = "payment-dev.jdevops74.online"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.payment.private_ip]
}
