terraform {
  required_version = ">= 1.11"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.89"
    }
    tls = {
      source = "hashicorp/tls"
      version = "4.0.5"
    }
    local = {
      source = "hashicorp/local"
      version = "2.5.2"
    }
  }
}

provider "aws" {
  region = "eu-west-1"
}