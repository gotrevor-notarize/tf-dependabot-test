terraform {
  required_version = ">= 1.9.1"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=5.74.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  alias  = "us-east-1"
}

module "label-24" {
  source  = "cloudposse/label/null"
  version = "0.25.0"

  name        = "test-name"
  environment = "test2"
}

module "label-25" {
  source  = "cloudposse/label/null"
  version = "0.25.0"

  name        = "test-name"
  environment = "test"
}
