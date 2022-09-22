module "settings" {
  source = "../settings"
}

output "output" {
  value = module.settings
}

#module "app" {
#  source = "../../modules/app"
#  vars = module.settings
#}
