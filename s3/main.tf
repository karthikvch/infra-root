provider "aws" {
  region = var.region
}

module "s3" {
  source        = "git::https://github.com/karthikvch/terraform-modules.git//s3?ref=v1.1.2"
  bucket_name   = var.bucket_name
  versioning    = var.versioning
  force_destroy = var.force_destroy
}