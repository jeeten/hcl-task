# resource "aws_route_table" "public_rt" {
#   vpc_id = aws_vpc.dev_vpc.id

#   route {
#     cidr_block = "0.0.0.0/0"
#     gateway_id = aws_internet_gateway.igw.id
#   }

#   tags = {
#     Name        = "${var.environment}-public-rt"
#     Environment = var.environment
#   }
# }



resource "aws_route_table" "public" {
    # provider    = aws.assumed_role
    vpc_id = aws_vpc.dev_vpc.id

    route  {

        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.igw.id

    }

    tags = {
        Name        = "${var.environment}-public"
    }
  
}

resource "aws_route_table_association" "public_assoc" {
    # provider    = aws.assumed_role
    subnet_id      = aws_subnet.public_subnet.id
    route_table_id = aws_route_table.public.id 
}


resource "aws_route_table" "private" {
    # provider    = aws.assumed_role
    vpc_id = aws_vpc.dev_vpc.id

    route  {

        cidr_block = "0.0.0.0/0"
        nat_gateway_id = aws_nat_gateway.nat.id
    }

    tags = {
      Name        = "${var.environment}-private"
    }
  
}

resource "aws_route_table_association" "private_assoc" {

    subnet_id = aws_subnet.private_subnet.id
    route_table_id = aws_route_table.private.id
}
