terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
provider "aws" {
  region = variable.region
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = variable.bucket_name
  acl    = "private"

 
    policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "AllowIPs",
      "Effect": "Deny",
      "Principal": "*",
      "Action": "s3:*",
      "Resource": [
        "arn:aws:s3:::${aws_s3_bucket.example_bucket.id}",
        "arn:aws:s3:::${aws_s3_bucket.example_bucket.id}/*"
      ],
      "Condition": {
        "NotIpAddress": {
          "aws:SourceIp": ["${var.whitelisted_ips}"]
        }
      }
    }
  ]
}
EOF
  }
}

