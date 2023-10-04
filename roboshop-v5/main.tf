module "components" {



  source          = "./module"
  zone_id         = var.zone_id
  security_groups = var.security_groups
  name            = var.name
  instance_type   = var.instance_type
}






