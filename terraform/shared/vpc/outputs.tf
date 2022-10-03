output "output" {
  value = {
    vpc_id  = data.aws_vpcs.vpcs.ids[0]
    subnets = data.aws_subnets.subnets.ids
  }
}
