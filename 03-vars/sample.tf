#variable "fruit"{
#  default = "apple"
#}
#
#output "fruit" {
#  value = var.fruit
#}

#variable "fruit_name" {
#  default = [ "apple", "orange"]
#}
#
#output "fruit_name" {
#  value = var.fruit_name[1]
#}

variable "fruit_name-1" {
   default= {
     apple=100
     banana = 200
   }
   }
output "fruit_name-1" {
  value = var.fruit_name-1.apple
}