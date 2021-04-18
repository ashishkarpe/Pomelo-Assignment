terraform {
  backend "s3" {
      bucket  = "pomelo-assignment"
        encrypt = false
        key     = "terraform/terraformRDS.tfstate"
        region  = "us-east-1"
  }
}
