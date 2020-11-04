variable "vpc_region" {
  default = "eu-west-2"
}

variable "vpc_cidr" {}

variable "public_cidrs" {
  type = list
}

variable "vpc_name" {
  default = "dev"
}
