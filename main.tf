terraform {
  required_version = ">= 0.12.0"
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "foo" {
  bucket        = "bar-pc-iac"
  acl           = "public-read-write"
  force_destroy = true
  versioning {
    enabled = false
  }
  tags = {
    yor_trace = "b9d892df-9dbc-4974-b716-786aca13da29"
  }
}
