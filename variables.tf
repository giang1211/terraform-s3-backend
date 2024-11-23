
variable "aws_region" {
  type        = string
  description = "AWS region for resources"
}

variable "s3_bucket_name" {
  description = "Name of the S3 bucket to store Terraform state files."
  type        = string
}

variable "dynamodb_table_name" {
  description = "Name of the DynamoDB table for state locking."
  type        = string
}

variable "tags" {
  description = "Tags to apply to the resources."
  type        = map(string)
}


