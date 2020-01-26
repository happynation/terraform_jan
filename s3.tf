resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket"
  versioning {
    enabled = true
  }

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}