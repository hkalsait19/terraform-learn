
# Output-values given info about on our cmd line to gives output which we wanted using 'output' field.

provider "aws" {
    region = "us-east-1"
}

resource "aws_eip" "eip_name" {
    domain = "vpc"
}

output "public_ip" {
  #value = aws_eip.eip_name.public_ip
  #value = "https://${aws_eip.eip_name.public_ip}:8080"
  value = aws_eip.eip_name # multiple types we can shoes output values
}
