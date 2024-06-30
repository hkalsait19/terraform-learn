# Example 1:

# allows us to store 'collection of values'
# represented by square bracket [] and inside comma seperated values if multiple values is there. eg.: ["a",5,true]

/*
variable "my-list" {
   type = list # if we skip  the list datata type here successfully run the pgm but we need to follow the best practices
}

/*
│ Error: Variables not allowed
│
│   on <value for var.my-list> line 1:
│   (source code not available)
│
│ Variables may not be used here.
╵
╷
│ Error: No value for required variable

*/

/*
output "variable_value" {
  value = var.my-list
}

*/

# Solution: Need to pass the values while terraform plan and terraform apply cmd like this... ["test1","test2",1,2,true]


/*

# Example 2: must be terraform init

resource "aws_instance" "myec2" {
  ami = "ami-123"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0f2d0213a3fe66025","sg-09ec82fbc6180d010"] #Single and multiple value(s) also work here
}

*/

# Example 3: 

variable "my-list" {
  type = list(number) # must be pass only numbber's like: ["1","2"]
  # default = ["1","2","3"]
}
