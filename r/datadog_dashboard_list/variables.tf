variable "name" {
  description = "(required) - The name of the Dashboard List"
  type        = string
}

variable "dash_item" {
  description = "nested mode: NestingSet, min items: 0, max items: 0"
  type = set(object(
    {
      dash_id = string
      type    = string
    }
  ))
  default = []
}

