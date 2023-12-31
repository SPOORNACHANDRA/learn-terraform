# this is not prefered in real time bcz tommorrow if another type of subnet come in the picture you need to go inside the module you write one more local you need to touch minimal whatever you give it shouldn't break the code

variable "vpc" {
  default = {
    main = {
      cidr = "10.0.0.0/24"
      subnets = {
        public = {
          public1 = {cidr = "10.0.0.0/24", az = "us-east-1a"}
          public2 = {cidr = "10.0.1.0/24", az = "us-east-1b"}
        }
        app = {
          app1 = {cidr = "10.0.2.0/24", az = "us-east-1a"}
          app2 = {cidr = "10.0.3.0/24", az = "us-east-1b"}
        }
        db = {
          db1 = {cidr = "10.0.4.0/24", az = "us-east-1a"}
          db2 = {cidr = "10.0.5.0/24", az = "us-east-1b"}
        }
      }
    }
  }
}
locals {
  public = {for k,v in merge(var.vpc["main"]["subnets"]["public"]): k => v}
  app = {for k,v in merge(var.vpc["main"]["subnets"]["app"]): k => v}
  db ={for k,v in merge(var.vpc["main"]["subnets"]["db"]): k => v}
}
output "all_subnets" {
  value = merge(local.public,local.app,local.db)
}