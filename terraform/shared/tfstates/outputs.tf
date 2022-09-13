output "output" {
  value = {
    lock         = aws_dynamodb_table.lock-table.id
    state_bucket = module.bucket.s3_bucket_id
  }
}
