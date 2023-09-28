variable "fruits" {
  default = ["apple","banana"]
}
output "fruit" {
  // value = var.fruits[2]
  value = element(var.fruits,2 )
}


# i am writing a program only for the fruits which are available stock whereas non available stock of any other fruit i didn't list in my input to deal with that
variable "fruit_with_stock" {
  default = {
    apple = {
      stock = 100
    }

  }
}
output "fruit_with_stock" {
  value = try(var.fruit_with_stock["banana"],0)
}

#
output "fruit_stockprice" {
  value = lookup(var.fruit_with_stock["apple"],"price",2)
}
