variable "name" {
  description = "(required)"
  type        = string
}

variable "pipelines" {
  description = "(required)"
  type        = list(string)
}

