module "app" {
  source = "../../modules/app"
  vars   = merge(local.settings, { tgapp = module.tgapp.output })
}

module "tgapp" {
  source = "../../modules/tgapp"
  vars   = local.settings
}
