variable "components" {
  default = {
    catalogue = { name = "catalogue_sg" }
    mongodb   = { name = "mongodb.sg" }
  }
}
resource "aws_security_group" "allow_tls" {

  for_each = var.components
  name = lookup(var.components,each.key, null )
}
