data "aws_ami_id" "machine" {
  most_recent = true
  name_regex = "Centos-8-DevOps-Practice"
  owners = ["208273282773"]

}