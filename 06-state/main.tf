terraform {
  backend "s3" {
    bucket = "jdevops74"
    key    = "09-state/terraform.state"
    region = "us-east-1"
  }
}

variable "test" {}
  output "test" {
    value = var.test
  }

