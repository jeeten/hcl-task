terraform {
  required_version = ">= 1.10.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.89.0"
    }
  }
  # backend "local" {
  #   path = "../../environments/dev/terraform.tfstate"
  # }

  backend "s3" {
    bucket = "infr-state"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
    encrypt = true
  }
}

provider "aws" {
  region = var.region
  profile = var.profile
}



# # Configure the Docker provider
# provider "docker" {}