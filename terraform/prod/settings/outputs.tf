output "tfstate" {
  value = module.shared_settings.tfstate
}

output "default_tags" {
  value = module.shared_settings.default_tags
}

output "domain" {
  value = "production.com"
}

output "environment" {
  value = "Production"
}

output "env" {
  value = "prod"
}

output "values" {
  value = module.shared.output
}

output "lb_rule_priority" {
  value = "100"
}
