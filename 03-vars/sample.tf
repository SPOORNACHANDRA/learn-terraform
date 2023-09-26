# plain variable
variable "fruit_name" {
  default = "apple"
}

output "fruit_name" {
  value = var.fruit_name
}

# list variable

variable "fruits" {
  default = [
  "apple",
  "banana"]
  //default =  [ "apple","banana"] //single line sntax
}

# map variable in plain
variable "fruit_stock" {
  default = {
    apple = 100
    banana = 200
  }
}

# map variable, maps of maps
variable "fruit_stock_with_price" {
  default = {
    apple = {
      stock=100
      price=3
    }
    banana={
      stock=400
      price=1
    }
  }
}



# how to access list variable, list index starts from zero
output "fruits_first" {
  value = var.fruits[0]
}

output "fruits_second" {
  value = var.fruits[1]
}

# access a map variable
output "fruit_stock_apple" {
  value = var.fruit_stock["apple"]
}



















