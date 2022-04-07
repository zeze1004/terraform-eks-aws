provider "aws" {
  profile = "sulsul" 
  region = "ap-northeast-2"
}

terraform {
    backend "s3" {
      bucket         = "tf-state.sulsul"
      key            = "terraform-aws-eks.tfstate"
      region         = "ap-northeast-2"  
    }
}