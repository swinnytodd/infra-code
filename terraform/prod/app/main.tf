module "settings" {
  source = "../settings"
}

module "vpc" {
  source   = "../../modules/get_remote_data"
  vars     = module.settings
  group    = "shared"
  resource = "vpc"
}

output "output" {
  value = module.vpc.output
}
