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
#
#output "fruit_name" {
#  value = element(var.fruit_name, 2)
#}

variable "fruit_name-1" {
   default= {
     apple ={
      stock =50
       price =5

   }

   }
   }
output "fruit_name-1_apple" {
  value = try(var.fruit_name-1["apple"].state,0)
}