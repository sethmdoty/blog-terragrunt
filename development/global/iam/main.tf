provider "aws" {
  region = "us-east-1"
}

resource "aws_iam_user" "blog_user" {
    name = "${var.environment}-blog-user"
    
    tags = {
        tag = "blog user"
    }
}
