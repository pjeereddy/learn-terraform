#variable "fruit"{
#  default = "apple"
#}
#
#output "fruit" {
#  value = var.fruit
#}

variable "fruit_name" {
  default = [ "apple", "orange"]
}

output "fruit_name" {
  value = var.fruit_name[1]
}