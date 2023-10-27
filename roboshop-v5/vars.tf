variable "zone_id" {
  default = "Z10339591VMISYKRO12LN"
}

variable "security_groups" {
  default =[ "sg-03acb8c13890086e9" ]
}

variable "components" {
  default = {
    frontend={
      name= "web"
      instance_type= "t3.micro"
    }
    cart={
      name= "app"
      instance_type= "t3.micro"
    }
  }
}


