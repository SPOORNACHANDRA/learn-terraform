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
# when ever we need apple stock
output "fruit_stock_with_price_of_apple" {
  value = var.fruit_stock_with_price["apple"].stock
}


# variable datatypes
variable "fruit_details" {
  default = {
    apple = {
      stock    = 100  #number
      type     = "washington" #string
      for_sale = true # boolean
      banana   = {
        stock    = 500  #number
        type     = "nyc" #string
        for_sale = true # boolean
      }
    }
  }
}

  # variable ina acombination of any other string then it needs to be within ${}

  output "fruit_details_apple" {
    value = "apple_stock = ${var.fruit_details["apple"].stock}, apple_type = ${var.fruit_details["apple"].type}, apple_status = ${var.fruit_details["apple"].for_sale},"
  }









