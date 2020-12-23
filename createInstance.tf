terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 2.70"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "ap-south-1"

}
resource "aws_instance" "m_tf_inst1" {
  ami           = var.ami-id
  instance_type = "t2.micro"
}

