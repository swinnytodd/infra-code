data "aws_vpcs" "vpcs" {
}

data "aws_subnets" "subnets" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpcs.vpcs.ids[0]]
  }
}
