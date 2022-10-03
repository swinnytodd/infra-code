module "shared_settings" {
  source = "../../shared/settings"
}

module "shared" {
  source   = "../../modules/get_remote_data"
  vars     = module.shared_settings
  group    = "shared"
  resource = "values"
}

locals {
  settings = {
    tfstate          = module.shared_settings.tfstate
    values           = module.shared.output
    default_tags     = module.shared_settings.default_tags
    domain           = "development.com"
    environment      = "Development"
    env              = "dev300"
    lb_rule_priority = "300"
  }
}
