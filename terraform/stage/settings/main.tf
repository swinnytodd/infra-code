module "shared_settings" {
  source = "../../shared/settings"
}

module "shared" {
  source   = "../../modules/get_remote_data"
  vars     = module.shared_settings
  group    = "shared"
  resource = "values"
}
