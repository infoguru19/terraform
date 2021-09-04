variable "tag_name" {}
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web-server" {
  ami               = "ami-0c2b8ca1dad447f8a"
  instance_type     = "t2.micro"
  key_name          = "main-key"
  tags = {
    Name = "${var.tag_name}"
  }
}
