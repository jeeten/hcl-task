# output "api_gateway_invoke_url" {
#   value = aws_api_gateway_rest_api.api.execution_arn
# }

# output "api_gateway_url" {
#   value = "https://${aws_api_gateway_rest_api.this.id}.execute-api.${var.region}.amazonaws.com/${var.stage_name}/${var.api_path}"
# }

output "api_gateway_invoke_url" {
  value = "${aws_api_gateway_deployment.api_deployment.invoke_url}"
}

output "api_gateway_url" {
  value = "${aws_api_gateway_stage.stage.invoke_url}/${var.api_path}"
}