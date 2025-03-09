# resource "aws_vpc" "main" {  
#   cidr_block = var.vpc_cidr
#   enable_dns_support = true
#   enable_dns_hostnames = true
# }

resource "aws_vpc" "dev_vpc" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name        = "${var.environment}-vpc"
    Environment = var.environment
  }
}

# resource "aws_vpc" "main" {

#     # provider    = aws.assumed_role

#     # cidr_block = "10.0.0.0/16"
#     cidr_block = var.vpc_cidr

#     enable_dns_support = true
#     enable_dns_hostnames = true

#     tags =  {
#         Name = "${local.env}-main" 
#     }

    
# }