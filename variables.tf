
variable "kms_key_id" {
  description = "The KMS key ID"
  type        = string
}

variable "random_value" {
  default     = false
  description = "Generate a random secret value"
  type        = bool
}

variable "random_value_configuration" {
  default = {
    exclude_characters         = ""
    exclude_lowercase          = false
    exclude_numbers            = false
    exclude_punctuation        = false
    exclude_uppercase          = false
    include_space              = false
    password_length            = 32
    require_each_included_type = true
  }
  description = "Random value generator configuration"
  type = object({
    exclude_characters         = string
    exclude_lowercase          = bool
    exclude_numbers            = bool
    exclude_punctuation        = bool
    exclude_uppercase          = bool
    include_space              = bool
    password_length            = number
    require_each_included_type = bool
  })
}

variable "secret_name" { type = string }

variable "secret_value" {
  default     = "__PLACEHOLDER__"
  description = "The secret value configuration"
  sensitive   = true
  type        = string
}
