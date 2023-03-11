terraform {
  required_version = "~>1.2.0"
}

provider "aws" {
  region  = "ap-southeast-2"
  version = "4.16"
}

# Current AWS Account User
data "aws_caller_identity" "current" {
}

locals {
  account_id = data.aws_caller_identity.current.account_id
}
