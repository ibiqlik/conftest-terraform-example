provider "aws" {
  region                  = "us-west-2"
  access_key              = ""
  secret_key              = ""
}

resource "aws_s3_bucket_public_access_block" "example" {
  bucket                  = "my-test-s3-terraform-bucket"

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
