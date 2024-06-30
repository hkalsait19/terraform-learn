resource "aws_instance" "myec2" {
  ami = "ami-123"
  # instance_type = var.types["ap-south-1"] # just put values here from the types block like us-east-1
    instance_type = var.list[1] # just put values here from the list block like [0][1][2]
}

variable "types" {
  type = map
  default = {
    us-east-1="t2.micro"
    us-west-2="t2.nano"
    eu-west-1="t2.small"
    ap-south-1="t2.medium"
  }
}

  variable "list" {
  type = list
  default = ["t2.medium","m5.large","m5.xlarge"] # depends on position here
}


output "instance_type" {
  value = aws_instance.myec2.instance_type
}
