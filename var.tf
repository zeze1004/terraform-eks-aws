locals {
  env     = "Dev"
  project = "sulsul"
  name    = join("-", [local.env, local.project])
  vpc_id  = "vpc-0d374f17684f2184c"
  private_subnets = [
	  "subnet-040686d6eb1d6473e",
	  "subnet-06af4cb19c69fe9b8",
	  "subnet-00f7d03a7fd832f73",
	  "subnet-0965e3d1cc0484dde",
  ]
  kms_key_arn         = "arn:aws:kms:ap-northeast-2:375839059348:key/8069539f-66c6-4308-a7dd-fafef5dc31f0"
  secrets_manager_arn = "arn:aws:secretsmanager:ap-northeast-2:375839059348:secret:sulsul_sample_SecretsManager-bLM965"
  aws_credential = {
    account_id = "375839059348"
    profile    = "sulsul"
    region     = "ap-northeast-2"
  }
  tags = {
    Environment = "Dev"
    Terraform   = "true"
    Project   = "sulsul"
  }
}
