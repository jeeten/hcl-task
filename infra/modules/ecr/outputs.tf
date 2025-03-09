output "repository_url" {
  value = aws_ecr_repository.lambda_repository.repository_url
}

output "repository_arn" {
  value = aws_ecr_repository.lambda_repository.arn
}