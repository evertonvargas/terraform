output "bucket_domain_name" {
  value       = data.aws_s3_bucket.s3_bucket.bucket_domain_name
  sensitive   = false
  description = "Qual o domain name do bucket criado"
}

output "bucket_region" {
  value       = data.aws_s3_bucket.s3_bucket.bucket_region
  sensitive   = false
  description = "Qual o region do bucket criado"
}