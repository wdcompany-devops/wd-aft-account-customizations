data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "pixar_bucket" {
  bucket = "aft-wd-pixar-dev-${data.aws_caller_identity.current.account_id}"
  acl    = "private"
}
