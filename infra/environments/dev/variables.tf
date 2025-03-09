variable "vpc_cidr" {}
variable "public_subnet_cidr" {}
variable "private_subnet_cidr" {}
variable "az" {}
variable "environment" {}
variable "region" {}
variable "profile" {}
variable "repository_name" {}
# Variables for dynamic tagging
variable "lambda_image_uri" {
  description = "The URI of the Lambda container image"
  type        = string
}

variable "lambda_invoke_arn" { }
variable "lambda_function_name" { }
variable "api_name" { }
variable "api_path" { }
variable "http_method" { }
variable stage_name {}


  



