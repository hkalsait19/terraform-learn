variable "ami" {
   # default = "ami-12345" # still value pickup from terraform.tfvars file
   #                       # If value not present in terraform.tfvars then pickup from variable.tf file
}

variable "instance_type" {}

variable "vpn_ip" {}

variable "app_port" {}


# If you want to create seperate file for dev, qa, and prod env so we can keep it but 
# use this command: terraform plan -var-file="prod.tfvars" OR "dev.tfvars"

# PRIORIRY: 1. prod.tfvars/dev.tfvars
#           2. terraform.tfvars
#           2. variable.terraform
#           3. main.tf
