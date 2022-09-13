output "tfstate" {
  value = {
    bucket   = var.bucket_name
    region   = var.bucket_region
    dynamodb = var.locks
  }
}

output "default_tags" {
  value = {
    Warning = "Managed by terraform do not edit"
  }
}
