
aws_region = "us-east-1"


s3_bucket_name = "s8giang-terraform-state-bucket"


dynamodb_table_name = "terraform-state-lock"

# Tags for Resources
tags = {
"owner" = "EK TECH SOFTWARE SOLUTION"
"environment" = "dev"
"project" = "del"
"create _by" = "Terraform"
"cloud provider" = "aws"
}


