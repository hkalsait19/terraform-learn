provider "aws" {
  region = "us-east-1"
}

resource "aws_eip" "lb" {
  domain = "vpc"
}

//after creation of elastic ip please release or disassociate due to costing...