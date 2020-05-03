variable "assertions" {
  description = "(optional)"
  type        = list(map(string))
  default     = null
}

variable "device_ids" {
  description = "(optional)"
  type        = list(string)
  default     = null
}

variable "locations" {
  description = "(required)"
  type        = list(string)
}

variable "message" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "options" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "request" {
  description = "(required)"
  type        = map(string)
}

variable "request_headers" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "status" {
  description = "(required)"
  type        = string
}

variable "subtype" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "tags" {
  description = "(required)"
  type        = list(string)
}

variable "type" {
  description = "(required)"
  type        = string
}

