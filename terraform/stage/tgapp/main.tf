module "settings" {
  source = "../settings"
}

module "tgapp" {
  source = "../../modules/tgapp"
  vars   = module.settings
}
