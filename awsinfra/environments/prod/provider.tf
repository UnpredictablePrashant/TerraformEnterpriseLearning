# use terraform cloud
terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.9"
    }
  }
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = ""

    workspaces {
      name = ""
    }
  }
}

provider "aws" {
  region = var.AWS_REGION
}