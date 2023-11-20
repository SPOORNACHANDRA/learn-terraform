terraform {
  backend "s3" {
    bucket = "practice-tf-state"
    key    = "09-state/terraform.tfstate"
    region = "us-east-1"
  }
}


variable "test" {
  default = "hello"
}


output "test" {
  value = "var.test"
}