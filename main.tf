provider "aws" {
  region = "us-east-1"
}

#created new VPC 
resource "aws_vpc" "myapp-vpc" {
  cidr_block = var.vpc_cidr_block
  tags = {
    Name = "${var.env_prefix}-vpc" # this is env variable prefix  HINT: if we want varaible inside the string we use ${var.eg} and if we want out side the string we just use var.etc
  }
}

# Created new Subnet
module "myapp-subnet" {
  source = "./modules/subnet"
  subnet_cidr_block = var.subnet_cidr_block
  vpc_id = aws_vpc.myapp-vpc.id
  availability_zone = var.availability_zone
  env_prefix = var.env_prefix
}

# Created new webserver


module "myapp-webserver" {
  source = "./modules/webserver"
  my_ipl = var.my_ipl
  env_prefix = var.env_prefix
  instance_type = var.instance_type
  availability_zone = var.availability_zone
  vpc_id = aws_vpc.myapp-vpc.id
  image_name = var.image_name
  subnet_id = module.myapp-subnet.subnet.id

}