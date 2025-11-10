resource "aws_s3_bucket" "s3_bucket" {
  bucket = "${var.org_name}-bucket-${terraform.workspace}"

  tags = {
    Name = "primeiro-bucket"
    Iac  = true
    context = "${terraform.workspace}"
  }
}

module "s3" {
  source = "./modules/s3"
  s3_bucket_name = "everton-iac"
}

module "cloudfront"{
  source = "./modules/cloudfront"

  bucket_domain_name = module.s3.bucket_domain_name
  origin_id = module.s3.bucket_id
  
  depends_on = [module.s3]
}