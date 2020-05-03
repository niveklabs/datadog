variable "description" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "groups" {
  description = "(optional) - A static set of groups to filter monitor-based SLOs"
  type        = set(string)
  default     = null
}

variable "monitor_ids" {
  description = "(optional) - A static set of monitor IDs to use as part of the SLO"
  type        = set(number)
  default     = null
}

variable "monitor_search" {
  description = "(optional) - A dynamic search on creation for the SLO"
  type        = string
  default     = null
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "tags" {
  description = "(optional)"
  type        = set(string)
  default     = null
}

variable "type" {
  description = "(required)"
  type        = string
}

variable "query" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      denominator = string
      numerator   = string
    }
  ))
  default = []
}

variable "thresholds" {
  description = "nested mode: NestingList, min items: 1, max items: 0"
  type = set(object(
    {
      target          = number
      target_display  = string
      timeframe       = string
      warning         = number
      warning_display = string
    }
  ))
}

