terraform {
  backend "s3" {
    bucket                  = "cloudjake-terraform-us-east-2"
    key                     = "state"
    region                  = "us-east-2"
    shared_credentials_file = "~/.aws/credentials"
    profile                 = "cloud_jake"
  }
}
