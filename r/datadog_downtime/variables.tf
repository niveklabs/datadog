variable "active" {
  description = "(optional) - When true indicates this downtime is being actively applied"
  type        = bool
  default     = null
}

variable "disabled" {
  description = "(optional) - When true indicates this downtime is not being applied"
  type        = bool
  default     = null
}

variable "end" {
  description = "(optional) - Optionally specify an end date when this downtime should expire"
  type        = number
  default     = null
}

variable "end_date" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "message" {
  description = "(optional) - An optional message to provide when creating the downtime, can include notification handles"
  type        = string
  default     = null
}

variable "monitor_id" {
  description = "(optional) - When specified, this downtime will only apply to this monitor"
  type        = number
  default     = null
}

variable "monitor_tags" {
  description = "(optional) - A list of monitor tags (up to 25), i.e. tags that are applied directly to monitors to which the downtime applies"
  type        = list(string)
  default     = null
}

variable "scope" {
  description = "(required) - specify the group scope to which this downtime applies. For everything use '*'"
  type        = list(string)
}

variable "start" {
  description = "(optional) - Specify when this downtime should start"
  type        = number
  default     = null
}

variable "start_date" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "timezone" {
  description = "(optional) - The timezone for the downtime, default UTC"
  type        = string
  default     = null
}

variable "recurrence" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      period            = number
      type              = string
      until_date        = number
      until_occurrences = number
      week_days         = list(string)
    }
  ))
  default = []
}

