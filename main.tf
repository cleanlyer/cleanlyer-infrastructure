provider "aws" {
    region = "eu-west-1"
}

data "terraform_remote_state" "network" {
  backend = "s3"
  config {
    bucket = "cleanly-terraform-states"
    key    = "cleanlyer-infrastructure.tfstate"
    region = "eu-west-1"
  }
}