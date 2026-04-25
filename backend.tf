terraform {
  backend "s3" {
    region  = "us-east-1"
    bucket  = "bucketyacreado-para-state-jeissonherrera"
    key     = "proyecto/jeissonherrera/terraform.tfstate"
    encrypt = true
  }
}