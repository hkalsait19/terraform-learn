provider "aws" {
  region = "us-east-1"
}

resource "aws_eip" "lb" {
  domain = "vpc"
}

//after creation of elastic ip please release or disassociate due to costing...

resource "aws_instance" "myec2" {
  ami           = "ami-04b70fa74e45c3917"
  instance_type = "t2.micro"
  tags = {
    Name = "my-ec2-with-attributes-and-eip"
  }
}
