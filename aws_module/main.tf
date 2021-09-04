provider "aws" {
  region = "us-east-1"
}

module "ec2_module1" {
	tag_name = "dev"
	source = "./ec2_module"
}

module "ec2_module2" {
        tag_name = "prod"
        source = "./ec2_module"
}

