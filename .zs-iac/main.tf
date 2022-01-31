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
    yor_trace = "ba5b80a3-a55e-4022-89d2-cf1e85033b4a"
  }
}
