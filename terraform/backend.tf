terraform {
  backend "s3" {
      bucket  = "pomelo-assignment"
        encrypt = false
        key     = "terraform/terraform.tfstate"
        region  = "us-east-1"
  }
}
