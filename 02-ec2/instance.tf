resource "aws_instance" "all" {
  ami           = ami-03265a0778a880afb
  instance_type = "t3.micro"

  tags = {
    Name = "ec2-practice"
  }
}