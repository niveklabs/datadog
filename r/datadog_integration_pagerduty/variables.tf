variable "api_token" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "individual_services" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "schedules" {
  description = "(optional)"
  type        = list(string)
  default     = null
}

variable "subdomain" {
  description = "(required)"
  type        = string
}

variable "services" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      service_key  = string
      service_name = string
    }
  ))
  default = []
}

