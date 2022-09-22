output "output" {
  value = {
    vpc = module.vpc.output
    ecr = module.ecr.output
  }
}
