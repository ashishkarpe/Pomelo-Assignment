variable "AWS_REGION" {
  default = "us-east-1"
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "Pomelo-Assignment-DevOps"
  //default = "mykey"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "Pomelo-Assignment-DevOps.pub"
  //default = "mykey.pub"
}

variable "AMIS" {
  type = map(string)
  default = {
    us-east-1 = "ami-13be557e"
  }
}

variable "RDS_PASSWORD" {
}

