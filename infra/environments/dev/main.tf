module "vpc" {    
  source                    = "../../modules/vpc"

  vpc_cidr                  = var.vpc_cidr
  public_subnet_cidr        = var.public_subnet_cidr
  private_subnet_cidr       = var.private_subnet_cidr
  az                        = var.az
  environment               = var.environment
  region                    = var.region
}

module "ecr" {
  source         = "../../modules/ecr"
  repository_name = var.repository_name
  environment     = var.environment
  public_subnet_cidr = var.public_subnet_cidr
  vpc_id   = module.vpc.vpc_id
  depends_on = [module.vpc]  

}

module "api_gateway" {
  source                  = "../../modules/api_gateway"  # Path to your API Gateway module
  
  vpc_id               = module.vpc.vpc_id

  lambda_invoke_arn    = var.lambda_invoke_arn
  lambda_function_name = var.lambda_invoke_arn # Update this with actual Lambda name

  api_name             = "dev-api"
  api_path             = "dev-my-lambda"
  http_method          = "GET"
  region               = var.region
  stage_name           = var.environment
  env                  = var.environment

}

