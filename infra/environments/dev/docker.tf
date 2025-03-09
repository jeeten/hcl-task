# resource "docker_image" "lambda_image" {
#   name          = "${aws_ecr_repository.lambda_repo.repository_url}:${var.image_tag}"
#   build {
#     context = "./lambda"  # Path to your Dockerfile and code (Dockerfile should be inside ./lambda folder)
#   }

#   # Push the image to ECR repository
#   push = true
# }