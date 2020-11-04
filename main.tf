provider "aws" {
  region = "eu-west-2"
}

module "vpc" {
  source   = "./vpc"
  vpc_cidr = "10.0.0.0/16"
  public_cidrs  = ["10.0.10.0/24", "10.0.20.0/24"]
}