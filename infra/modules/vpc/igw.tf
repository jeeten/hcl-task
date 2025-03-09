# resource "aws_internet_gateway" "igw" {
#     # provider    = aws.assumed_role
#     vpc_id = aws_vpc.main.id

#     tags = {
#       "Name" = "${local.env}-igw"
#     }
  
# }


resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.dev_vpc.id

  tags = {
    Name        = "${var.environment}-igw"
    Environment = var.environment
  }
}
