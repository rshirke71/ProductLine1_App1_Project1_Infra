terraform {
  backend "s3" {
    encrypt        = true
    bucket         = "aws-cloud-nonprod-terraform-backend"
    dynamodb_table = "LockingTable"
    region         = "us-east-1"
    key            = "ProductLine1_App1_Project1_Infra-test.tfstate"
  }
}
