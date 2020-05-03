variable "height" {
  description = "(optional) - Height of the screenboard"
  type        = string
  default     = null
}

variable "read_only" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "shared" {
  description = "(optional) - Whether the screenboard is shared or not"
  type        = bool
  default     = null
}

variable "title" {
  description = "(required) - Name of the screenboard"
  type        = string
}

variable "width" {
  description = "(optional) - Width of the screenboard"
  type        = string
  default     = null
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

variable "widget" {
  description = "nested mode: NestingList, min items: 1, max items: 0"
  type = set(object(
    {
      alert_id                  = number
      auto_refresh              = bool
      bgcolor                   = string
      check                     = string
      color                     = string
      color_preference          = string
      columns                   = string
      display_format            = string
      env                       = string
      event_size                = string
      font_size                 = string
      group                     = string
      group_by                  = list(string)
      grouping                  = string
      height                    = number
      hide_zero_counts          = bool
      html                      = string
      layout_version            = string
      legend                    = bool
      legend_size               = string
      logset                    = string
      manage_status_show_title  = bool
      manage_status_title_align = string
      manage_status_title_size  = string
      manage_status_title_text  = string
      margin                    = string
      monitor                   = map(string)
      must_show_breakdown       = bool
      must_show_distribution    = bool
      must_show_errors          = bool
      must_show_hits            = bool
      must_show_latency         = bool
      must_show_resource_list   = bool
      params                    = map(string)
      precision                 = string
      query                     = string
      rule = list(object(
        {
          color     = string
          threshold = number
          timeframe = string
        }
      ))
      service_name        = string
      service_service     = string
      show_last_triggered = bool
      size_version        = string
      sizing              = string
      summary_type        = string
      tags                = list(string)
      text                = string
      text_align          = string
      text_size           = string
      tick                = bool
      tick_edge           = string
      tick_pos            = string
      tile_def = list(object(
        {
          autoscale   = bool
          custom_unit = string
          event = list(object(
            {
              q = string
            }
          ))
          group = list(string)
          marker = list(object(
            {
              label = string
              type  = string
              value = string
            }
          ))
          no_group_hosts  = bool
          no_metric_hosts = bool
          node_type       = string
          precision       = string
          request = list(object(
            {
              aggregator = string
              apm_query = list(object(
                {
                  compute = list(object(
                    {
                      aggregation = string
                      facet       = string
                      interval    = string
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
                  color           = string
                  comparator      = string
                  custom_bg_color = string
                  invert          = bool
                  palette         = string
                  value           = string
                }
              ))
              extra_col     = string
              increase_good = bool
              limit         = number
              log_query = list(object(
                {
                  compute = list(object(
                    {
                      aggregation = string
                      facet       = string
                      interval    = string
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
              metadata_json = string
              metric        = string
              order_by      = string
              order_dir     = string
              process_query = list(object(
                {
                  filter_by = list(string)
                  limit     = number
                  metric    = string
                  search_by = string
                }
              ))
              q           = string
              query_type  = string
              style       = map(string)
              tag_filters = list(string)
              text_filter = string
              type        = string
            }
          ))
          scope      = list(string)
          style      = map(string)
          text_align = string
          viz        = string
        }
      ))
      time        = map(string)
      timeframes  = list(string)
      title       = string
      title_align = string
      title_size  = number
      type        = string
      unit        = string
      url         = string
      viz_type    = string
      width       = number
      x           = number
      y           = number
    }
  ))
}

