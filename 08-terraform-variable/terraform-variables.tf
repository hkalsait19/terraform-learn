resource "aws_security_group" "allow_tls" {
  name        = "terraform firewall-security group"
  description = "Managed by Terraform - TLS inbound traffic and all outbound traffic"
  tags = {
    Name = "terraform firewall-security group"
  }
}


# Below Approach recommended OR this is the best practice to protect out values inside variable file

resource "aws_vpc_security_group_ingress_rule" "app_port" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = var.vpn_ip
  from_port         = var.app_port
  ip_protocol       = var.ip_protocol
  to_port           = var.app_port
}

resource "aws_vpc_security_group_ingress_rule" "ssh_port" {
  security_group_id = aws_security_group.allow_tls.id 
  cidr_ipv4         = var.vpn_ip
  from_port         = var.ssh_port
  ip_protocol       = var.ip_protocol
  to_port           = var.ssh_port
}

resource "aws_vpc_security_group_ingress_rule" "ftp_port" {
  security_group_id = aws_security_group.allow_tls.id //this approach is NOT recommended inside variable file. So keep it simple.
  cidr_ipv4         = var.vpn_ip
  from_port         = var.ftp_port
  ip_protocol       = var.ip_protocol
  to_port           = var.ftp_port
}


/*

# Below Approach is Hard coded and mostly nit recommended OR NOT best practice

resource "aws_vpc_security_group_ingress_rule" "app_port" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = "10.20.30.40/32"
  from_port         = 8080
  ip_protocol       = "tcp"
  to_port           = 8080
}

resource "aws_vpc_security_group_ingress_rule" "ssh_port" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = "10.20.30.40/32"
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}

resource "aws_vpc_security_group_ingress_rule" "ftp_port" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = "10.20.30.40/32"
  from_port         = 21
  ip_protocol       = "tcp"
  to_port           = 21
}
*/
