# specify the count value and resources can be scaled accordingly using [0] position is 1 resource, [1] second resource...

# but resources with the same naming convension...

resource "aws_instance" "instance" {
    ami = "ami-04b70fa74e45c3917"
    instance_type = "t2.micro"
    count = 5  
    tags = {
        Name = "instance-${count.index +1}" # to adding instances with naming convesion
  }
}
