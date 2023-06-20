variable "region" {
  description = "AWS region"
  type        = string
}

variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
}

variable "logs_bucket_name" {
  description = "Name of the S3 bucket for logs"
  type        = string
}

variable "whitelisted_ips" {
  description = "List of whitelisted IPs"
  type        = list(string)
}
