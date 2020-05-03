variable "enable_logs_sample" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "escalation_message" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "evaluation_delay" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "include_tags" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "locked" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "message" {
  description = "(required)"
  type        = string
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "new_host_delay" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "no_data_timeframe" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "notify_audit" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "notify_no_data" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "query" {
  description = "(required)"
  type        = string
}

variable "renotify_interval" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "require_full_window" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "silenced" {
  description = "(optional)"
  type        = map(number)
  default     = null
}

variable "tags" {
  description = "(optional)"
  type        = set(string)
  default     = null
}

variable "threshold_windows" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "thresholds" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "timeout_h" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "type" {
  description = "(required)"
  type        = string
}

