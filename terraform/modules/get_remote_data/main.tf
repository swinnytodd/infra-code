data "terraform_remote_state" "this" {
  backend = "s3"

  config = {
    bucket = var.vars.tfstate.bucket
    region = var.vars.tfstate.region
    key    = "${var.group}/${var.resource}/terraform.tfstate"
  }
}
