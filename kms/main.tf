resource "aws_kms_key" "key" {
    description             = var.kms_key_description
    deletion_window_in_days = 10
    enable_key_rotation     = true

  tags = {
    Name        = "${var.kms_key_alias}-${var.environment}"
    Environment = var.environment
    Department  = var.department
    Project     = var.project
  }
}

resource "aws_kms_alias" "key_alias" {
    name          = "alias/${var.kms_key_alias}-${var.environment}"
    target_key_id = aws_kms_key.key.id
}