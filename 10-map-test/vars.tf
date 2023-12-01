variable "vpc" {
  default = {
    main = {
      cidr = "10.0.0.0/24"
      subnets = {
        public1 = {
          public = {cidr = "10.0.0.0/24", az = "us-east-1a"}
        }
        app1 = {
          app = {cidr = "10.0.2.0/24", az = "us-east-1a"}
        }
        db1 = {
          db = {cidr = "10.0.4.0/24", az = "us-east-1a"}
        }
        public2 = {
          public = {cidr = "10.0.1.0/24", az = "us-east-1b"}
        }
        app2 = {
          app = {cidr = "10.0.3.0/24", az = "us-east-1b"}
        }
        db2 = {
          db = {cidr = "10.0.5.0/24", az = "us-east-1b"}
        }
      }
    }
  }

}

output "subnets" {
  value = var.vpc
}



#locals {
#  public = {for k,v in merge(var.vpc["main"]["subnets"]["public"]): k => v}
#  app = {for k,v in merge(var.vpc["main"]["subnets"]["app"]): k => v}
#  db ={for k,v in merge(var.vpc["main"]["subnets"]["db"]): k => v}
#}
#output "all_subnets" {
#  value = merge(local.public,local.app,local.db)
#}