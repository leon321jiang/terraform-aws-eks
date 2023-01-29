terraform {
  backend "s3" {
    bucket         = "terraform-state-bucket-leon"
    dynamodb_table = "terraform-lock"
    key            = "terraform-aws-eks" ## this needs to be changed per region
    region         = "us-east-2"         // this is the bucket tfm-sec-state bucket is
    encrypt        = true
  }
}