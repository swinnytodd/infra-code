module "settings" {
  source = "../settings"
}

resource "aws_ecr_repository" "ecr" {
  name = module.settings.ecr.name
}
