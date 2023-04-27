output "arn" {
  description = "The secret ARN"
  value       = aws_secretsmanager_secret.secret.arn
}
