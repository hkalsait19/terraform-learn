# example 1:
/*
variable "username" {
    type = number # must a NUMBER is required.
}

resource "aws_iam_user" "lb" {
  name = var.username
}
*/

# example 2:

resource "aws_instance" "web" {
  ami = "ami-04b70fa74e45c3917"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-09ec82fbc6180d010"] # If you put directly with "sg-09..." value then its gives error to required string
}
