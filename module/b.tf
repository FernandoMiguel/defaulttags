resource "aws_s3_bucket" "b" {
  bucket_prefix = "my-tf-test-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
output "b" {
  value = aws_s3_bucket.b
}
