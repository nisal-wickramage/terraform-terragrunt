resource "aws_s3_bucket" "log_bucket" {
  bucket = "${var.bucket_name}-${var.environment}"

  tags = {
    Name        = "${var.bucket_name}-${var.environment}" 
    Environment = var.environment
    Department  = var.department
    Project     = var.project
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "log_bucket" {
  bucket = aws_s3_bucket.log_bucket.bucket

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm     = "aws:kms"
      kms_master_key_id = var.kms_key_id
    }
  }
}