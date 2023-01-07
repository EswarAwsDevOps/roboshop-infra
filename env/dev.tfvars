env = "dev"


## Default VPC_Information
default_vpc_id = "vpc-0eb06c62785facb36"
default_vpc_cidr_block = "172.31.0.0/16"
default_vpc_route_table = "rtb-09a1ef52562404cd4"
workstation_ip          = "172.31.6.237/32"

##KMS Information
kms_key_id = "arn:aws:kms:us-east-1:759016968779:key/1641cf84-b4e6-4c6e-9d8a-1f3df29a58fa"


## vpc

vpc = {
  dev = {
    vpc_cidr_block              = "10.0.0.0/16"
    public_subnet_cidr_block    = ["10.0.0.0/24", "10.0.1.0/24"]
    app_subnet_cidr_block       = ["10.0.2.0/24", "10.0.3.0/24"]
    db_subnet_cidr_block        = ["10.0.4.0/24", "10.0.5.0/24"]
    subnet_azs                  = ["us-east-1a", "us-east-1b"]
  }
}
docdb = {
  dev = {
    engine = "docdb"
    backup_retention_period = 1
    preferred_backup_window = "07:00-09:00"
    skip_final_snapshot     = true
    storage_encrypted       = true
    instance_count          = 1
    instance_class          = "db.t3.medium"


  }
}
rds = {
  dev = {
    engine = "aurora-mysql"
    engine_version = "5.7.mysql_aurora.2.11.0"
    database_name = "dummy"
    skip_final_snapshot = true
    backup_retention_period = 1
    preferred_backup_window = "07:00-09:00"
    storage_encrypted       = true
  }
}