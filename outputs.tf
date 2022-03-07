output "cloud9_access_url" {
  description = "Cloud9 Environment URL for access"
  value       = "https://${var.region}/.console.aws.amazon.com/cloud9/ide/${aws_cloud9_environment_ec2.cloud9_example.id}"
}
