terraform {
  required_version = ">= 1.1.6"
  backend "local" {
    path = "terraform.tfstate"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.2"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  default_tags {
    tags = {
      foo              = "bar"
      TerraformCreated = "true"
    }
  }
}
