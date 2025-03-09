output "lambda_role_arn" {
  value = aws_iam_role.lambda_execution_role.arn
}

# output "api_gateway_invoke_url" {
#   value = "api_gateway.api_deployment.invoke_url"
# }


# output "api_gateway_url" {
#   value = "https://${aws_api_gateway_rest_api.this.id}.execute-api.${var.region}.amazonaws.com/${var.stage_name}/${var.api_path}"
# }

output "api_invoke_url" {
  value = module.api_gateway.api_gateway_url
}