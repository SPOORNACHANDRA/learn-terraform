variable "zone_id" {
  default = "Z07143353VCC4QLIJE3K9"
}

variable "security_groups" {
  default =[ "sg-01e08ae71abfec0c4" ]
}

variable "components" {
  default = {
    frontend={
      name= "frontend-dev"
      instance_type= "t3.micro"
    }
    mongodb={
      name= "mongodb-dev"
      instance_type= "t3.micro"
    }
    catalogue={
      name= "catalogue-dev"
      instance_type= "t3.micro"
    }
    redis={
      name= "redis-dev"
      instance_type= "t3.micro"
    }
    cart={
      name= "cart-dev"
      instance_type= "t3.micro"
    }
    user={
      name= "user-dev"
      instance_type= "t3.micro"
    }
    shipping={
      name= "shipping-dev"
      instance_type= "t3.micro"
    }
    mysql={
      name= "mysql-dev"
      instance_type= "t3.micro"
    }
    rabbitmq={
      name= "rabbitmq-dev"
      instance_type= "t3.micro"
    }
    payment={
      name= "payment-dev"
      instance_type= "t3.micro"
    }
  }
}


