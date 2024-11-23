resource "aws_s3_bucket" "terraform_state" {
  bucket = var.s3_bucket_name
  acl    = "private"
  tags   = var.tags

  # versioning {
  #   enabled = true
  # }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}

# DynamoDB Table for State Locking
resource "aws_dynamodb_table" "state_lock" {
  name           = var.dynamodb_table_name
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
  tags = var.tags
}


