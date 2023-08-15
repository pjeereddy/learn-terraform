terraform {
  backend "s3" {
    bucket = "jdevops74"

  }
}

variable "test" {}
  output "test" {
    value = var.test
  }

