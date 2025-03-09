# resource "aws_eip" "nat" {

#     domain = "vpc" 

#     tags = {
#       Name = "${local.env}-nat"
#     }
#     # provider    = aws.assumed_role
#     # depends_on = [aws_iam_user_policy_attachment.user_role_attachment]
# }

# resource "aws_nat_gateway" "nat" {

#     allocation_id = aws_eip.nat.id
#     subnet_id = aws_subnet.public_zone1.id

#     tags = {
#       Name = "${local.env}-nat"
#     }
#     # provider    = aws.assumed_role
#   depends_on = [ aws_internet_gateway.igw ]
# }

resource "aws_eip" "nat_eip" {

    # domain = "vpc" 

    # tags = {
    #   Name = "${local.env}-nat"
    # }
}

resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = aws_subnet.public_subnet.id

  tags = {
    Name        = "${var.environment}-nat-gateway"
    Environment = var.environment
  }

  depends_on = [ aws_internet_gateway.igw ]
}
