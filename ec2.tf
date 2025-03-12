resource "aws_instance" "terraform_inst1" {
  ami = data.aws_ami.ubuntu-24.id
  instance_type = var.instance_type
  key_name = aws_key_pair.my_key.key_name
  security_groups = [aws_security_group.terraform_sec_gr.name]
  user_data = <<-EOT
    #!/bin/bash
    echo "${var.lecturer_public_key_ssh}" >> /home/ubuntu/.ssh/authorized_keys
    chown ubuntu:ubuntu /home/ubuntu/.ssh/authorized_keys
    chmod 600 /home/ubuntu/.ssh/authorized_keys
  EOT
  tags = {
    Name = "terraform_instance_1"
  }
}

resource "aws_instance" "terraform_inst2" {
  ami = data.aws_ami.ubuntu-24.id
  instance_type = var.instance_type
  key_name = aws_key_pair.my_key.key_name
  security_groups = [aws_security_group.terraform_sec_gr.name]
  user_data = <<-EOT
    #!/bin/bash
    echo "${var.lecturer_public_key_ssh}" >> /home/ubuntu/.ssh/authorized_keys
    chown ubuntu:ubuntu /home/ubuntu/.ssh/authorized_keys
    chmod 600 /home/ubuntu/.ssh/authorized_keys
  EOT
  tags = {
    Name = "terraform_instance_2"
  }
}