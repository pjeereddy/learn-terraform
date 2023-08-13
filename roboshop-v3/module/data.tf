data "aws_ami_ids" "machine" {
  most_recent = true
  name_regex = "Centos-8-DevOps-Practice"
  owners = ["208273282773"]

}