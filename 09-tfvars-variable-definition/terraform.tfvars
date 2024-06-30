ami = "ami-04b70fa74e45c3917"
instance_type = "t2.micro"

# If you want to create seperate file for dev, qa, and prod env so we can keep it but 
# use this command: terraform plan -var-file="prod.tfvars" OR "dev.tfvars"

# PRIORIRY: 1. prod.tfvars/dev.tfvars
#           2. terraform.tfvars
#           2. variable.terraform
#           3. main.tf
