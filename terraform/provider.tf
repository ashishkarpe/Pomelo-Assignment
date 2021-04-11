provider "aws" {
//  access_key = "AKIAQF6YGRERJZYSWPM3"
//  secret_key = "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"


  access_key = "AKIAQF6YGRERJDJJRKT5"
  secret_key = "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"
  region     = var.AWS_REGION
}

data "aws_availability_zones" "available" {
}

provider "http" {
}

