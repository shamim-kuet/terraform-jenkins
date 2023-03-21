# create variable region

variable "region" {
    default = "ap-southeast-1"
  
}

#  create vpc_cidr
variable "vpc_cidr" {
    default = "10.20.0.0/16"
  
}

#  create tenancy
variable "tenancy" {
    default = "default"
  
}
