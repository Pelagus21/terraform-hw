data "aws_vpc" "default" {
  default = true
}

resource "aws_security_group" "terraform_sec_gr" {
  name = "terraform_sec_group"
  description = "EC2 instances security group created using terraform"
  vpc_id = data.aws_vpc.default.id
}

resource "aws_vpc_security_group_ingress_rule" "allow_all_ip_traffic_p22" {
  security_group_id = aws_security_group.terraform_sec_gr.id
  from_port = 22
  to_port = 22
  ip_protocol = "tcp"
  cidr_ipv4 = "0.0.0.0/0"
}

resource "aws_vpc_security_group_ingress_rule" "allow_self_ip_traffic_p5432_35" {
  security_group_id = aws_security_group.terraform_sec_gr.id
  from_port = 5432
  to_port = 5435
  ip_protocol = "tcp"
  referenced_security_group_id = aws_security_group.terraform_sec_gr.id
}

resource "aws_vpc_security_group_egress_rule" "allow_all_outbound_traffic" {
  security_group_id = aws_security_group.terraform_sec_gr.id
  from_port = 0
  to_port = 0
  ip_protocol = "-1"
  cidr_ipv4 = "0.0.0.0/0"
}

