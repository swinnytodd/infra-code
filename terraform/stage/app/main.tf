module "settings" {
  source = "../settings"
}

module "tgapp" {
  source   = "../../modules/get_remote_data"
  vars     = module.settings
  group    = module.settings.env
  resource = "tgapp"
}

module "app" {
  source = "../../modules/app"
  vars   = merge(module.settings, { tgapp = module.tgapp.output.output })
}
