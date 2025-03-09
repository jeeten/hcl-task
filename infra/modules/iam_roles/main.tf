# resource "aws_iam_role" "lambda_role" {
#   name = "lambda-role"

#   assume_role_policy = jsonencode({
#     Version = "2012-10-17"
#     Statement = [{
#       Action = "sts:AssumeRole"
#       Effect = "Allow"
#       Principal = {
#         Service = "lambda.amazonaws.com"
#       }
#     }]
#   })
# }

# resource "aws_iam_policy" "lambda_ecr_policy" {
#   name = "lambda-ecr-policy"

#   policy = jsonencode({
#     Version = "2012-10-17"
#     Statement = [{
#       Effect = "Allow"
#       Action = [
#         "ecr:GetAuthorizationToken",
#         "ecr:BatchGetImage",
#         "ecr:GetDownloadUrlForLayer"
#       ]
#       Resource = "*"
#     }]
#   })
# }

# resource "aws_iam_role_policy_attachment" "lambda_ecr_attach" {
#   role       = aws_iam_role.lambda_role.name
#   policy_arn = aws_iam_policy.lambda_ecr_policy.arn
# }

# resource "aws_iam_policy" "api_gateway_policy" {
#   name = "api-gateway-policy"

#   policy = jsonencode({
#     Version = "2012-10-17"
#     Statement = [{
#       Effect = "Allow"
#       Action = [
#         "execute-api:Invoke"
#       ]
#       Resource = "*"
#     }]
#   })
# }

# resource "aws_iam_role_policy_attachment" "api_gateway_attach" {
#   role       = aws_iam_role.lambda_role.name
#   policy_arn = aws_iam_policy.api_gateway_policy.arn
# }