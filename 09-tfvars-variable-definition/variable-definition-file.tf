resource "aws_instance" "myec2" {
  ami           = var.ami
  instance_type = var.instance_type
  
  tags = {
    Name = "my-ec2-with-variable-defination-file-tfvars"
  }
}


# If you want to create seperate file for dev, qa, and prod env so we can keep it but 
# use this command: terraform plan -var-file="prod.tfvars" OR "dev.tfvars" while inline cmd prompt

# PRIORIRY: 1. prod.tfvars/dev.tfvars
#           2. terraform.tfvars
#           2. variable.terraform
#           3. main.tf

# Used commands
# terraform init
# terraform apply #picks up only terraform.tfvars file
# terraform apply -var-file="prod.tfvars" OR -auto-approve
# terraform apply -var-file="dev.tfvars" OR -auto-approve
# terraform destroy -var-file="dev.tfvars" OR -auto-approve

## OR if used *.tfvars file then below commands,

# Used commands
# terraform init
# terraform plan
# terraform apply
# terraform destroy



# precedence:
# 1. TF_VAR_variable_name(instance_type)
# 2. -var="var_name" #pass into the command line directly
# 3. *.tfvars
# 4. variables.tf
# 5. inside main.tf

# Windows: cmd -- sysdm.cpl -- advanced -- env var -- NEW -- type: TF_VAR_instance_type and value -- OK
# linux/MacOS: echo %TF_VAR_instance_type% 
