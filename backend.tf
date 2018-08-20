terraform {
  backend "s3" {
    bucket = "cleanly-terraform-states"
    key    = "cleanlyer-infrastructure.tfstate"
    region = "eu-west-1"
  }
}
