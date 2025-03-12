variable "my_public_key_ssh" {
  description = "My public SSH key"
  type = string
  default = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIM/XgfuP9ADykAg+8ngwtS0F8yWol/S6cI/tD8KjJCxR user@DESKTOP-0B7LCDE"
}

variable "lecturer_public_key_ssh" {
  description = "Lecturer's public SSH key"
  type = string
  default = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOkAhvfRyUvgsUwENIds1a/4OvuHQgLki8K1EzPltl5M i.ilin@iilin-pro14.local"
}

variable "instance_type" {
  description = "EC2 instance type"
  type = string
  default = "t2.micro"
}