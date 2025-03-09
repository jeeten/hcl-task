
# locals {
#   image_tag = "v3"
# }

# # Lambda Function - Create or Update
# resource "aws_lambda_function" "my_lambda" {
#   function_name = "${var.environment}-my-lambda"
#   role          = aws_iam_role.lambda_execution_role.arn

#   package_type  = "Image"
#   timeout      = 30
#   memory_size  = 512

#   # image_uri = "${module.ecr.repository_url}:latest"

#   image_uri = "${module.ecr.repository_url}:${local.image_tag}"

#   # Optionally, define environment variables, VPC configuration, etc.
#   vpc_config {
#     subnet_ids         = [module.vpc.private_subnet_id]
#     security_group_ids = [aws_security_group.lambda_sg.id]
#   }
# }