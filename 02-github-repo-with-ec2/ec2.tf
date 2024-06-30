
provider "aws" {
  region = "us-east-1"
}

/*
resource "aws_instance" "myec2" {
  ami           = "ami-04b70fa74e45c3917"
  instance_type = "t2.micro"
  tags = {
    Name = "my-ec2-with-github-repo"
  }
}
*/
// destoy command using -'target' flag: terraform destroy -target aws_instance.myec2
