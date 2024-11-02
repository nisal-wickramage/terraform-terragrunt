variable "environment" {
    type = string
}

variable "department" {
    type = string
}

variable "project" {
    type = string
}

variable "kms_key_description" {
    description = "Description of the KMS key"
    type        = string
}

variable "kms_key_alias" {
    description = "Alias of the KMS key"
    type        = string
}