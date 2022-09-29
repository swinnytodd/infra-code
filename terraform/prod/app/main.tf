module "settings" {
  source = "../settings"
}

module "app" {
  source = "../../modules/app"
  vars   = module.settings
}
