variable "zone_id" {
  default = "Z07367993464WPX4UVN8D"
}

variable "security_groups" {
  default =[ "sg-03acb8c13890086e9" ]
}

variable "components" {
  default = {
    frontend={
      name= "frontend"
      instance_type= "t3.micro"
    }
    cart={
      name= "mongodb"
      instance_type= "t3.micro"
    }
  }
}


