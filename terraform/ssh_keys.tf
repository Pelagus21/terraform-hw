resource "aws_key_pair" "my_key" {
  key_name = "ansible_hw"
  public_key = var.my_public_key_ssh
}