terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "test_bucket" {
  bucket        = "${var.project_name}-lab-bucket"
  force_destroy = true

  tags = {
    Name        = "TerraformLab"
    Environment = var.environment
  }
}

output "bucket_name" {
  value = aws_s3_bucket.test_bucket.bucket
}
