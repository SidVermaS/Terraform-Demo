terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  # After the initial terraform apply i.e. creation of s3 bucket & dyanmo db, comment in & re-run terraform init, terraform apply. 
  backend "s3"  {
    bucket = "demo-terraform-states"
    key = "terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "demo_terraform_lock"
    encrypt = true
  }
}
provider "aws"  {
    region = var.region
}
