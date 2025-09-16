data "aws_availability_zones" "available" {}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "4.0.0"

  name = "${var.cluster_name}-vpc"
  cidr = "10.10.0.0/16"
  azs  = slice(data.aws_availability_zones.available.names, 0, 2)

  public_subnets  = ["10.10.1.0/24","10.10.2.0/24"]
  private_subnets = ["10.10.11.0/24","10.10.12.0/24"]

  enable_nat_gateway = false
}
