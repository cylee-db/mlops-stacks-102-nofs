terraform {
  // The `backend` block below configures the s3 backend
  // (docs: https://www.terraform.io/language/settings/backends/s3)
  // for storing Terraform state in an AWS S3 bucket. You can run the setup scripts in mlops-setup-scripts/terraform to
  // provision the S3 bucket referenced below and store appropriate credentials for accessing the bucket from CI/CD.
  backend "s3" {
    bucket         = "mlops-stacks-102-nofs-tfstate"
    key            = "staging.terraform.tfstate"
    dynamodb_table = "mlops-stacks-102-nofs-tfstate-lock"
    region         = "us-east-1"
  }
  required_providers {
    databricks = {
      source = "databricks/databricks"
    }
  }
}
