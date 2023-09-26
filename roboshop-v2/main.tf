#variable "components" {
#  default = ["frontend", "mongodb","catalogue"]
#}






# if you have more details about your component you write like this
variable "components" {
  default = {
    frontend = {
      instance_type = "t3.micro"
    }
    mongodb = {
      instance_type = "t3.small"
    }
  }
}


