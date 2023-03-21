# create providers
provider "aws" {
    region = "${var.region}"
    access_key = "AKIA3VLQHMBRTDVRX5HO"
    secret_key = "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"
  
}


#  create s3 backend
terraform {
  backend "s3" {
    bucket = "javahome-tf-1209022"
    key    = "terraform.tfstate"
    region = "ap-southeast-1"
    access_key = "AKIA3VLQHMBRTDVRX5HO"
    secret_key = "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"
  }
}
