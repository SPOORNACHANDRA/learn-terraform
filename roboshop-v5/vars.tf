variable "zone_id" {
  default = "Z10339591VMISYKRO12LN"
}

variable "security_groups" {
  default =[ "sg-0d8a6e86b202c9281" ]
}

variable "instance_type" {
  default = {
    frontend={
      instance_type= "t3.micro"
    }
    cart={
      instance_type= "t3.micro"
    }
  }
}

variable "name" {
  default = {
    frontend = {
      name          = "frontend"
    }
    cart = {
      name          = "cart"
    }
  }
}