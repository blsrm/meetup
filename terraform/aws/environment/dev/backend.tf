terraform {
  backend "s3" {
    encrypt        = true
    bucket         = "terraform-remote-state-cdt-demo-s3"
    dynamodb_table = "terraform-state-lock-dynamo"
    region         = "eu-central-1"
    key            = "tfstate/cdt-demo-tfstate"
  }
}