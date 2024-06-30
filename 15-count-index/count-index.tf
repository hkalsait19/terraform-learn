provider "aws" {
  region = "us-east-1"
}

/*
resource "aws_iam_user" "user_name" {
  name = "user_name.${count.index}"
  count = 5
  path = "/system/"
}
*/
