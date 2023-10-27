variable "zone_id" {
  default = "Z07367993464WPX4UVN8D"
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


