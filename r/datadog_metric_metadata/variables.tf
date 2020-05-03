variable "description" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "metric" {
  description = "(required)"
  type        = string
}

variable "per_unit" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "short_name" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "statsd_interval" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "type" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "unit" {
  description = "(optional)"
  type        = string
  default     = null
}

