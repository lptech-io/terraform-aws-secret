resource "aws_secretsmanager_secret" "secret" {
  description = "${var.secret_name} secret"
  kms_key_id  = var.kms_key_id
  name        = var.secret_name
}

data "aws_secretsmanager_random_password" "random_secret_value" {
  count = var.random_value ? 1 : 0
  exclude_characters         = var.random_value_configuration.exclude_characters
  exclude_lowercase          = var.random_value_configuration.exclude_lowercase
  exclude_numbers            = var.random_value_configuration.exclude_numbers
  exclude_punctuation        = var.random_value_configuration.exclude_punctuation
  exclude_uppercase          = var.random_value_configuration.exclude_uppercase
  include_space              = var.random_value_configuration.include_space
  password_length            = var.random_value_configuration.password_length
  require_each_included_type = var.random_value_configuration.require_each_included_type
}

resource "aws_secretsmanager_secret_version" "secret_version" {
  secret_id     = aws_secretsmanager_secret.secret.id
  secret_string = var.random_value ? data.aws_secretsmanager_random_password.random_secret_value[0].random_password : var.secret_value
}
