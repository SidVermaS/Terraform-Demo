variable  "region"  {
    description = "The AWS region to deploy resource"
    type = string
    default = "ap-south-1"
}

variable "instance_ami" {
    description = "ami"
    type = string
    default = "ami-0dee22c13ea7a9a67"
}
variable "instance_type"    {
    description = "The type of EC2 instance"
    type = string
    default = "t2.micro"
}

variable "bucket_name"  {
    description = "The S3's Bucket name"
    type = string
    default = "demo-terraform-states"
}

variable "dynamodb_table_name"   {
    description = "Dynamo table's name for to lock terraform"
    type = string
    default = "demo_terraform_lock"
}
