module "settings" {
  source = "../settings"
}

module "bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "3.4.0"

  bucket                  = module.settings.tfstate.bucket
  acl                     = "private"
  block_public_acls       = true
  block_public_policy     = true
  restrict_public_buckets = true
  ignore_public_acls      = true

  versioning = {
    enabled    = true
    mfa_delete = false
  }
  tags = merge({
    Name = "S3 bucket for terraform states"
    },
  module.settings.default_tags)
}

resource "aws_dynamodb_table" "lock-table" {
  name         = module.settings.tfstate.dynamodb
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = merge({
    Name = "DynamoDB table for locking terraform state"
    },
  module.settings.default_tags)
}
