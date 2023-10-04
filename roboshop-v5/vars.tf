variable "zone_id" {
  default = "Z10339591VMISYKRO12LN"
}

variable "security_groups" {
  default =[ "sg-0d8a6e86b202c9281" ]
}

variable "components" {
  default = {
    frontend={
      name= "frontend"
      instance_type= "t3.micro"
    }
    cart={
      name= "cart"
      instance_type= "t3.micro"
    }
  }
}


