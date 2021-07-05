terraform {
  required_providers{
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws"{
  profile = "personal"
  region  = "ap-south-1"
}

resource "aws_instance" "terraformvm"{
  ami           = "ami-0c1a7f89451184c8b"
  instance_type = "t2.micro"
}