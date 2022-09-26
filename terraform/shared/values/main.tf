module "settings" {
  source = "../settings"
}

module "vpc" {
  source   = "../../modules/get_remote_data"
  vars     = module.settings
  group    = "shared"
  resource = "vpc"
}

module "ecr" {
  source   = "../../modules/get_remote_data"
  vars     = module.settings
  group    = "shared"
  resource = "ecr"
}

module "lb" {
  source   = "../../modules/get_remote_data"
  vars     = module.settings
  group    = "shared"
  resource = "lb"
}
