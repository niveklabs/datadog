variable "name" {
  description = "(required)"
  type        = string
}

variable "exclusion_filter" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      filter = list(object(
        {
          query       = string
          sample_rate = number
        }
      ))
      is_enabled = bool
      name       = string
    }
  ))
  default = []
}

variable "filter" {
  description = "nested mode: NestingList, min items: 1, max items: 0"
  type = set(object(
    {
      query = string
    }
  ))
}

