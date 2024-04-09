terraform {
  backend "s3" {
    bucket = "ntconsult-terraform-state-backend"
    key    = "terraform.tfstate"
    region = "sa-east-1"
  }
}
