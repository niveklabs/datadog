variable "account_id" {
  description = "(required)"
  type        = string
}

variable "account_specific_namespace_rules" {
  description = "(optional)"
  type        = map(bool)
  default     = null
}

variable "filter_tags" {
  description = "(optional)"
  type        = list(string)
  default     = null
}

variable "host_tags" {
  description = "(optional)"
  type        = list(string)
  default     = null
}

variable "role_name" {
  description = "(required)"
  type        = string
}

