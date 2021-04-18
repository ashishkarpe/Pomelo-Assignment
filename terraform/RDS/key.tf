resource "aws_key_pair" "Pomelo-Assignment-DevOps" {
  key_name   = "Pomelo-Assignment-DevOps"
  public_key = file(var.PATH_TO_PUBLIC_KEY)
}

