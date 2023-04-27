<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 4 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_secretsmanager_secret.secret](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret) | resource |
| [aws_secretsmanager_secret_version.secret_version](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version) | resource |
| [aws_secretsmanager_random_password.random_secret_value](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/secretsmanager_random_password) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_kms_key_id"></a> [kms\_key\_id](#input\_kms\_key\_id) | The KMS key ID | `string` | n/a | yes |
| <a name="input_random_value"></a> [random\_value](#input\_random\_value) | Generate a random secret value | `bool` | `false` | no |
| <a name="input_random_value_configuration"></a> [random\_value\_configuration](#input\_random\_value\_configuration) | Random value generator configuration | <pre>object({<br>    exclude_characters         = string<br>    exclude_lowercase          = bool<br>    exclude_numbers            = bool<br>    exclude_punctuation        = bool<br>    exclude_uppercase          = bool<br>    include_space              = bool<br>    password_length            = number<br>    require_each_included_type = bool<br>  })</pre> | <pre>{<br>  "exclude_characters": "",<br>  "exclude_lowercase": false,<br>  "exclude_numbers": false,<br>  "exclude_punctuation": false,<br>  "exclude_uppercase": false,<br>  "include_space": false,<br>  "password_length": 32,<br>  "require_each_included_type": true<br>}</pre> | no |
| <a name="input_secret_name"></a> [secret\_name](#input\_secret\_name) | n/a | `string` | n/a | yes |
| <a name="input_secret_value"></a> [secret\_value](#input\_secret\_value) | The secret value configuration | `string` | `"__PLACEHOLDER__"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | The secret ARN |
<!-- END_TF_DOCS -->