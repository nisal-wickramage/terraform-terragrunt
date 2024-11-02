variable "environment" {
    type = string
}

variable "department" {
    type = string
}

variable "project" {
    type = string
}


variable "bucket_name" {
    type = string
}

variable "kms_key_id" {
  description = "The ID of the KMS key to use for S3 bucket encryption"
  type        = string
}