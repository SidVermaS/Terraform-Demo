resource "aws_s3_bucket" "terraform_state" {
    bucket = var.bucket_name
}
# resource "aws_s3_bucket_server_side_encryption_configuration" "demo_terraform_server_side_configuration"    {
#     bucket = var.bucket_name
#     rule    {
#         apply_server_side_encryption_by_default {
#           sse_algorithm = "AES256"
#         }
#     }
# }
resource "aws_s3_bucket_server_side_encryption_configuration" "demo_terraform_server_side_configuration"    {
    bucket = var.bucket_name
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
}