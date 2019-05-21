terragrunt = {
  remote_state {
    backend = "s3"
    config {
      bucket         = "seth-terraform-state"
      key            = "${path_relative_to_include()}/terraform.tfstate"
      region         = "us-east-1"
      encrypt        = true
      dynamodb_table = "my-lock-table"

      s3_bucket_tags {
        owner = "terragrunt test"
        name  = "Terraform state storage"
      }

      dynamodb_table_tags {
        owner = "terragrunt test"
        name  = "Terraform lock table"
      }
    }
  }
}