resource "aws_key_pair" "my_key" {
  key_name_prefix = "terraformhw-"
  public_key = var.my_public_key_ssh
}