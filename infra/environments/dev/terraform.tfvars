vpc_cidr            = "10.0.0.0/16"
public_subnet_cidr  = "10.0.1.0/24"
private_subnet_cidr = "10.0.2.0/24"
az                  = "us-east-1a"
environment         = "dev"
region              = "us-east-1"
profile             = "default"
repository_name     =  "lambda-docker-image"
# image_tag           = "v1-${timestamp()}"


api_name = "dev-api"
api_path = "dev-my-lambda"
http_method = "POST"
lambda_function_name = "arn:aws:lambda:us-east-1:248189927181:function:dev-my-lambda"
lambda_image_uri = "248189927181.dkr.ecr.us-east-1.amazonaws.com/lambda-docker-image:20250309070337"
lambda_invoke_arn = "arn:aws:lambda:us-east-1:248189927181:function:dev-my-lambda"
stage_name = "dev"

