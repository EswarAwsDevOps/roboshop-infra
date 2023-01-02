env = "dev"

## vpc
vpc_cidr_block    = "10.0.0.0/16"
subnet_cidr_block = ["10.0.0.0/17", "10.0.128.0/17"]
subnet_azs        = ["us-east-1a", "us-east-1b"]

## Default VPC_Information
default_vpc_id = "vpc-0eb06c62785facb36"
default_vpc_cidr_block = "172.31.0.0/16"
default_vpc_route_table = "rtb-09a1ef52562404cd4"
