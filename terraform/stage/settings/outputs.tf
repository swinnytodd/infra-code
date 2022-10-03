output "tfstate" {
  value = module.shared_settings.tfstate
}

output "default_tags" {
  value = module.shared_settings.default_tags
}

output "domain" {
  value = "staging.com"
}

output "environment" {
  value = "Staging"
}

output "env" {
  value = "stage"
}

output "values" {
  value = module.shared.output
}
