variable "security_groups" {
  default = ["sg-04037aaeeaec0fb25"]
}

variable "zone_id" {
  default = "Z07566581YBFAK47CB013"
}

variable "components" {
  default = {
    frontend ={
      name = "frontend"
      instance_type = "t3.micro"
    }
    cart     = {
      name = "cart"
      instance_type = "t3.micro"
    }
  }
}