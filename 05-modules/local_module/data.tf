data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["208273282773"] }
  instance_type = var.instance_type

output "ami" {
  value = "data.aws_ami.ami"
}
resource "aws_instance" "instance" {

  ami = data.aws_ami.ami
  instance_type = var.instance_type

}
variable "instance_type" {}