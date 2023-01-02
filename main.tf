module "vpc" {
  source = "github.com/EswarAwsDevOps/tf-module-vpc"
  vpc_cidr_block = var.vpc_cidr_block
  env = var.env
}