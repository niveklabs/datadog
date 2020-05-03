variable "description" {
  description = "(required) - A description of the dashboard's content."
  type        = string
}

variable "read_only" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "title" {
  description = "(required) - The name of the dashboard."
  type        = string
}

variable "graph" {
  description = "nested mode: NestingList, min items: 1, max items: 0"
  type = set(object(
    {
      autoscale               = bool
      custom_unit             = string
      events                  = list(string)
      group                   = list(string)
      include_no_metric_hosts = bool
      include_ungrouped_hosts = bool
      marker = list(object(
        {
          label = string
          type  = string
          value = string
        }
      ))
      node_type = string
      precision = string
      request = list(object(
        {
          aggregator = string
          apm_query = list(object(
            {
              compute = list(object(
                {
                  aggregation = string
                  facet       = string
                  interval    = number
                }
              ))
              group_by = list(object(
                {
                  facet = string
                  limit = number
                  sort = list(object(
                    {
                      aggregation = string
                      facet       = string
                      order       = string
                    }
                  ))
                }
              ))
              index = string
              search = list(object(
                {
                  query = string
                }
              ))
            }
          ))
          change_type = string
          compare_to  = string
          conditional_format = list(object(
            {
              comparator      = string
              custom_bg_color = string
              custom_fg_color = string
              palette         = string
              value           = string
            }
          ))
          extra_col     = string
          increase_good = bool
          log_query = list(object(
            {
              compute = list(object(
                {
                  aggregation = string
                  facet       = string
                  interval    = number
                }
              ))
              group_by = list(object(
                {
                  facet = string
                  limit = number
                  sort = list(object(
                    {
                      aggregation = string
                      facet       = string
                      order       = string
                    }
                  ))
                }
              ))
              index = string
              search = list(object(
                {
                  query = string
                }
              ))
            }
          ))
          metadata_json   = string
          order_by        = string
          order_direction = string
          process_query = list(object(
            {
              filter_by = list(string)
              limit     = number
              metric    = string
              search_by = string
            }
          ))
          q       = string
          stacked = bool
          style   = map(string)
          type    = string
        }
      ))
      scope      = list(string)
      style      = map(string)
      text_align = string
      title      = string
      viz        = string
      yaxis      = map(string)
    }
  ))
}

variable "template_variable" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      default = string
      name    = string
      prefix  = string
    }
  ))
  default = []
}

