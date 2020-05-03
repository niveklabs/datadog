variable "description" {
  description = "(optional) - The description of the dashboard."
  type        = string
  default     = null
}

variable "is_read_only" {
  description = "(optional) - Whether this dashboard is read-only."
  type        = bool
  default     = null
}

variable "layout_type" {
  description = "(required) - The layout type of the dashboard, either 'free' or 'ordered'."
  type        = string
}

variable "notify_list" {
  description = "(optional) - The list of handles of users to notify when changes are made to this dashboard."
  type        = list(string)
  default     = null
}

variable "title" {
  description = "(required) - The title of the dashboard."
  type        = string
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
      alert_graph_definition = list(object(
        {
          alert_id    = string
          time        = map(string)
          title       = string
          title_align = string
          title_size  = string
          viz_type    = string
        }
      ))
      alert_value_definition = list(object(
        {
          alert_id    = string
          precision   = number
          text_align  = string
          title       = string
          title_align = string
          title_size  = string
          unit        = string
        }
      ))
      change_definition = list(object(
        {
          request = list(object(
            {
              apm_query = list(object(
                {
                  compute = map(string)
                  group_by = list(object(
                    {
                      facet = string
                      limit = number
                      sort  = map(string)
                    }
                  ))
                  index  = string
                  search = map(string)
                }
              ))
              change_type   = string
              compare_to    = string
              increase_good = bool
              log_query = list(object(
                {
                  compute = map(string)
                  group_by = list(object(
                    {
                      facet = string
                      limit = number
                      sort  = map(string)
                    }
                  ))
                  index  = string
                  search = map(string)
                }
              ))
              order_by  = string
              order_dir = string
              process_query = list(object(
                {
                  filter_by = list(string)
                  limit     = number
                  metric    = string
                  search_by = string
                }
              ))
              q            = string
              show_present = bool
            }
          ))
          time        = map(string)
          title       = string
          title_align = string
          title_size  = string
        }
      ))
      check_status_definition = list(object(
        {
          check       = string
          group       = string
          group_by    = list(string)
          grouping    = string
          tags        = list(string)
          time        = map(string)
          title       = string
          title_align = string
          title_size  = string
        }
      ))
      distribution_definition = list(object(
        {
          request = list(object(
            {
              apm_query = list(object(
                {
                  compute = map(string)
                  group_by = list(object(
                    {
                      facet = string
                      limit = number
                      sort  = map(string)
                    }
                  ))
                  index  = string
                  search = map(string)
                }
              ))
              log_query = list(object(
                {
                  compute = map(string)
                  group_by = list(object(
                    {
                      facet = string
                      limit = number
                      sort  = map(string)
                    }
                  ))
                  index  = string
                  search = map(string)
                }
              ))
              process_query = list(object(
                {
                  filter_by = list(string)
                  limit     = number
                  metric    = string
                  search_by = string
                }
              ))
              q = string
              style = list(object(
                {
                  palette = string
                }
              ))
            }
          ))
          time        = map(string)
          title       = string
          title_align = string
          title_size  = string
        }
      ))
      event_stream_definition = list(object(
        {
          event_size  = string
          query       = string
          time        = map(string)
          title       = string
          title_align = string
          title_size  = string
        }
      ))
      event_timeline_definition = list(object(
        {
          query       = string
          time        = map(string)
          title       = string
          title_align = string
          title_size  = string
        }
      ))
      free_text_definition = list(object(
        {
          color      = string
          font_size  = string
          text       = string
          text_align = string
        }
      ))
      group_definition = list(object(
        {
          layout_type = string
          title       = string
          widget = list(object(
            {
              alert_graph_definition = list(object(
                {
                  alert_id    = string
                  time        = map(string)
                  title       = string
                  title_align = string
                  title_size  = string
                  viz_type    = string
                }
              ))
              alert_value_definition = list(object(
                {
                  alert_id    = string
                  precision   = number
                  text_align  = string
                  title       = string
                  title_align = string
                  title_size  = string
                  unit        = string
                }
              ))
              change_definition = list(object(
                {
                  request = list(object(
                    {
                      apm_query = list(object(
                        {
                          compute = map(string)
                          group_by = list(object(
                            {
                              facet = string
                              limit = number
                              sort  = map(string)
                            }
                          ))
                          index  = string
                          search = map(string)
                        }
                      ))
                      change_type   = string
                      compare_to    = string
                      increase_good = bool
                      log_query = list(object(
                        {
                          compute = map(string)
                          group_by = list(object(
                            {
                              facet = string
                              limit = number
                              sort  = map(string)
                            }
                          ))
                          index  = string
                          search = map(string)
                        }
                      ))
                      order_by  = string
                      order_dir = string
                      process_query = list(object(
                        {
                          filter_by = list(string)
                          limit     = number
                          metric    = string
                          search_by = string
                        }
                      ))
                      q            = string
                      show_present = bool
                    }
                  ))
                  time        = map(string)
                  title       = string
                  title_align = string
                  title_size  = string
                }
              ))
              check_status_definition = list(object(
                {
                  check       = string
                  group       = string
                  group_by    = list(string)
                  grouping    = string
                  tags        = list(string)
                  time        = map(string)
                  title       = string
                  title_align = string
                  title_size  = string
                }
              ))
              distribution_definition = list(object(
                {
                  request = list(object(
                    {
                      apm_query = list(object(
                        {
                          compute = map(string)
                          group_by = list(object(
                            {
                              facet = string
                              limit = number
                              sort  = map(string)
                            }
                          ))
                          index  = string
                          search = map(string)
                        }
                      ))
                      log_query = list(object(
                        {
                          compute = map(string)
                          group_by = list(object(
                            {
                              facet = string
                              limit = number
                              sort  = map(string)
                            }
                          ))
                          index  = string
                          search = map(string)
                        }
                      ))
                      process_query = list(object(
                        {
                          filter_by = list(string)
                          limit     = number
                          metric    = string
                          search_by = string
                        }
                      ))
                      q = string
                      style = list(object(
                        {
                          palette = string
                        }
                      ))
                    }
                  ))
                  time        = map(string)
                  title       = string
                  title_align = string
                  title_size  = string
                }
              ))
              event_stream_definition = list(object(
                {
                  event_size  = string
                  query       = string
                  time        = map(string)
                  title       = string
                  title_align = string
                  title_size  = string
                }
              ))
              event_timeline_definition = list(object(
                {
                  query       = string
                  time        = map(string)
                  title       = string
                  title_align = string
                  title_size  = string
                }
              ))
              free_text_definition = list(object(
                {
                  color      = string
                  font_size  = string
                  text       = string
                  text_align = string
                }
              ))
              heatmap_definition = list(object(
                {
                  request = list(object(
                    {
                      apm_query = list(object(
                        {
                          compute = map(string)
                          group_by = list(object(
                            {
                              facet = string
                              limit = number
                              sort  = map(string)
                            }
                          ))
                          index  = string
                          search = map(string)
                        }
                      ))
                      log_query = list(object(
                        {
                          compute = map(string)
                          group_by = list(object(
                            {
                              facet = string
                              limit = number
                              sort  = map(string)
                            }
                          ))
                          index  = string
                          search = map(string)
                        }
                      ))
                      process_query = list(object(
                        {
                          filter_by = list(string)
                          limit     = number
                          metric    = string
                          search_by = string
                        }
                      ))
                      q = string
                      style = list(object(
                        {
                          palette = string
                        }
                      ))
                    }
                  ))
                  time        = map(string)
                  title       = string
                  title_align = string
                  title_size  = string
                  yaxis = list(object(
                    {
                      include_zero = bool
                      label        = string
                      max          = string
                      min          = string
                      scale        = string
                    }
                  ))
                }
              ))
              hostmap_definition = list(object(
                {
                  group           = list(string)
                  no_group_hosts  = bool
                  no_metric_hosts = bool
                  node_type       = string
                  request = list(object(
                    {
                      fill = list(object(
                        {
                          apm_query = list(object(
                            {
                              compute = map(string)
                              group_by = list(object(
                                {
                                  facet = string
                                  limit = number
                                  sort  = map(string)
                                }
                              ))
                              index  = string
                              search = map(string)
                            }
                          ))
                          log_query = list(object(
                            {
                              compute = map(string)
                              group_by = list(object(
                                {
                                  facet = string
                                  limit = number
                                  sort  = map(string)
                                }
                              ))
                              index  = string
                              search = map(string)
                            }
                          ))
                          process_query = list(object(
                            {
                              filter_by = list(string)
                              limit     = number
                              metric    = string
                              search_by = string
                            }
                          ))
                          q = string
                        }
                      ))
                      size = list(object(
                        {
                          apm_query = list(object(
                            {
                              compute = map(string)
                              group_by = list(object(
                                {
                                  facet = string
                                  limit = number
                                  sort  = map(string)
                                }
                              ))
                              index  = string
                              search = map(string)
                            }
                          ))
                          log_query = list(object(
                            {
                              compute = map(string)
                              group_by = list(object(
                                {
                                  facet = string
                                  limit = number
                                  sort  = map(string)
                                }
                              ))
                              index  = string
                              search = map(string)
                            }
                          ))
                          process_query = list(object(
                            {
                              filter_by = list(string)
                              limit     = number
                              metric    = string
                              search_by = string
                            }
                          ))
                          q = string
                        }
                      ))
                    }
                  ))
                  scope = list(string)
                  style = list(object(
                    {
                      fill_max     = string
                      fill_min     = string
                      palette      = string
                      palette_flip = bool
                    }
                  ))
                  title       = string
                  title_align = string
                  title_size  = string
                }
              ))
              iframe_definition = list(object(
                {
                  url = string
                }
              ))
              image_definition = list(object(
                {
                  margin = string
                  sizing = string
                  url    = string
                }
              ))
              layout = map(string)
              log_stream_definition = list(object(
                {
                  columns     = list(string)
                  logset      = string
                  query       = string
                  time        = map(string)
                  title       = string
                  title_align = string
                  title_size  = string
                }
              ))
              manage_status_definition = list(object(
                {
                  color_preference = string
                  count            = number
                  display_format   = string
                  hide_zero_counts = bool
                  query            = string
                  sort             = string
                  start            = number
                  title            = string
                  title_align      = string
                  title_size       = string
                }
              ))
              note_definition = list(object(
                {
                  background_color = string
                  content          = string
                  font_size        = string
                  show_tick        = bool
                  text_align       = string
                  tick_edge        = string
                  tick_pos         = string
                }
              ))
              query_value_definition = list(object(
                {
                  autoscale   = bool
                  custom_unit = string
                  precision   = number
                  request = list(object(
                    {
                      aggregator = string
                      apm_query = list(object(
                        {
                          compute = map(string)
                          group_by = list(object(
                            {
                              facet = string
                              limit = number
                              sort  = map(string)
                            }
                          ))
                          index  = string
                          search = map(string)
                        }
                      ))
                      conditional_formats = list(object(
                        {
                          comparator      = string
                          custom_bg_color = string
                          custom_fg_color = string
                          hide_value      = bool
                          image_url       = string
                          palette         = string
                          timeframe       = string
                          value           = number
                        }
                      ))
                      log_query = list(object(
                        {
                          compute = map(string)
                          group_by = list(object(
                            {
                              facet = string
                              limit = number
                              sort  = map(string)
                            }
                          ))
                          index  = string
                          search = map(string)
                        }
                      ))
                      process_query = list(object(
                        {
                          filter_by = list(string)
                          limit     = number
                          metric    = string
                          search_by = string
                        }
                      ))
                      q = string
                    }
                  ))
                  text_align  = string
                  time        = map(string)
                  title       = string
                  title_align = string
                  title_size  = string
                }
              ))
              scatterplot_definition = list(object(
                {
                  color_by_groups = list(string)
                  request = list(object(
                    {
                      x = list(object(
                        {
                          aggregator = string
                          apm_query = list(object(
                            {
                              compute = map(string)
                              group_by = list(object(
                                {
                                  facet = string
                                  limit = number
                                  sort  = map(string)
                                }
                              ))
                              index  = string
                              search = map(string)
                            }
                          ))
                          log_query = list(object(
                            {
                              compute = map(string)
                              group_by = list(object(
                                {
                                  facet = string
                                  limit = number
                                  sort  = map(string)
                                }
                              ))
                              index  = string
                              search = map(string)
                            }
                          ))
                          process_query = list(object(
                            {
                              filter_by = list(string)
                              limit     = number
                              metric    = string
                              search_by = string
                            }
                          ))
                          q = string
                        }
                      ))
                      y = list(object(
                        {
                          aggregator = string
                          apm_query = list(object(
                            {
                              compute = map(string)
                              group_by = list(object(
                                {
                                  facet = string
                                  limit = number
                                  sort  = map(string)
                                }
                              ))
                              index  = string
                              search = map(string)
                            }
                          ))
                          log_query = list(object(
                            {
                              compute = map(string)
                              group_by = list(object(
                                {
                                  facet = string
                                  limit = number
                                  sort  = map(string)
                                }
                              ))
                              index  = string
                              search = map(string)
                            }
                          ))
                          process_query = list(object(
                            {
                              filter_by = list(string)
                              limit     = number
                              metric    = string
                              search_by = string
                            }
                          ))
                          q = string
                        }
                      ))
                    }
                  ))
                  time        = map(string)
                  title       = string
                  title_align = string
                  title_size  = string
                  xaxis = list(object(
                    {
                      include_zero = bool
                      label        = string
                      max          = string
                      min          = string
                      scale        = string
                    }
                  ))
                  yaxis = list(object(
                    {
                      include_zero = bool
                      label        = string
                      max          = string
                      min          = string
                      scale        = string
                    }
                  ))
                }
              ))
              service_level_objective_definition = list(object(
                {
                  show_error_budget = bool
                  slo_id            = string
                  time_windows      = list(string)
                  title             = string
                  title_align       = string
                  title_size        = string
                  view_mode         = string
                  view_type         = string
                }
              ))
              timeseries_definition = list(object(
                {
                  event = list(object(
                    {
                      q = string
                    }
                  ))
                  legend_size = string
                  marker = list(object(
                    {
                      display_type = string
                      label        = string
                      value        = string
                    }
                  ))
                  request = list(object(
                    {
                      apm_query = list(object(
                        {
                          compute = map(string)
                          group_by = list(object(
                            {
                              facet = string
                              limit = number
                              sort  = map(string)
                            }
                          ))
                          index  = string
                          search = map(string)
                        }
                      ))
                      display_type = string
                      log_query = list(object(
                        {
                          compute = map(string)
                          group_by = list(object(
                            {
                              facet = string
                              limit = number
                              sort  = map(string)
                            }
                          ))
                          index  = string
                          search = map(string)
                        }
                      ))
                      metadata = list(object(
                        {
                          alias_name = string
                          expression = string
                        }
                      ))
                      process_query = list(object(
                        {
                          filter_by = list(string)
                          limit     = number
                          metric    = string
                          search_by = string
                        }
                      ))
                      q = string
                      style = list(object(
                        {
                          line_type  = string
                          line_width = string
                          palette    = string
                        }
                      ))
                    }
                  ))
                  show_legend = bool
                  time        = map(string)
                  title       = string
                  title_align = string
                  title_size  = string
                  yaxis = list(object(
                    {
                      include_zero = bool
                      label        = string
                      max          = string
                      min          = string
                      scale        = string
                    }
                  ))
                }
              ))
              toplist_definition = list(object(
                {
                  request = list(object(
                    {
                      apm_query = list(object(
                        {
                          compute = map(string)
                          group_by = list(object(
                            {
                              facet = string
                              limit = number
                              sort  = map(string)
                            }
                          ))
                          index  = string
                          search = map(string)
                        }
                      ))
                      conditional_formats = list(object(
                        {
                          comparator      = string
                          custom_bg_color = string
                          custom_fg_color = string
                          hide_value      = bool
                          image_url       = string
                          palette         = string
                          timeframe       = string
                          value           = number
                        }
                      ))
                      log_query = list(object(
                        {
                          compute = map(string)
                          group_by = list(object(
                            {
                              facet = string
                              limit = number
                              sort  = map(string)
                            }
                          ))
                          index  = string
                          search = map(string)
                        }
                      ))
                      process_query = list(object(
                        {
                          filter_by = list(string)
                          limit     = number
                          metric    = string
                          search_by = string
                        }
                      ))
                      q = string
                      style = list(object(
                        {
                          palette = string
                        }
                      ))
                    }
                  ))
                  time        = map(string)
                  title       = string
                  title_align = string
                  title_size  = string
                }
              ))
              trace_service_definition = list(object(
                {
                  display_format     = string
                  env                = string
                  service            = string
                  show_breakdown     = bool
                  show_distribution  = bool
                  show_errors        = bool
                  show_hits          = bool
                  show_latency       = bool
                  show_resource_list = bool
                  size_format        = string
                  span_name          = string
                  time               = map(string)
                  title              = string
                  title_align        = string
                  title_size         = string
                }
              ))
            }
          ))
        }
      ))
      heatmap_definition = list(object(
        {
          request = list(object(
            {
              apm_query = list(object(
                {
                  compute = map(string)
                  group_by = list(object(
                    {
                      facet = string
                      limit = number
                      sort  = map(string)
                    }
                  ))
                  index  = string
                  search = map(string)
                }
              ))
              log_query = list(object(
                {
                  compute = map(string)
                  group_by = list(object(
                    {
                      facet = string
                      limit = number
                      sort  = map(string)
                    }
                  ))
                  index  = string
                  search = map(string)
                }
              ))
              process_query = list(object(
                {
                  filter_by = list(string)
                  limit     = number
                  metric    = string
                  search_by = string
                }
              ))
              q = string
              style = list(object(
                {
                  palette = string
                }
              ))
            }
          ))
          time        = map(string)
          title       = string
          title_align = string
          title_size  = string
          yaxis = list(object(
            {
              include_zero = bool
              label        = string
              max          = string
              min          = string
              scale        = string
            }
          ))
        }
      ))
      hostmap_definition = list(object(
        {
          group           = list(string)
          no_group_hosts  = bool
          no_metric_hosts = bool
          node_type       = string
          request = list(object(
            {
              fill = list(object(
                {
                  apm_query = list(object(
                    {
                      compute = map(string)
                      group_by = list(object(
                        {
                          facet = string
                          limit = number
                          sort  = map(string)
                        }
                      ))
                      index  = string
                      search = map(string)
                    }
                  ))
                  log_query = list(object(
                    {
                      compute = map(string)
                      group_by = list(object(
                        {
                          facet = string
                          limit = number
                          sort  = map(string)
                        }
                      ))
                      index  = string
                      search = map(string)
                    }
                  ))
                  process_query = list(object(
                    {
                      filter_by = list(string)
                      limit     = number
                      metric    = string
                      search_by = string
                    }
                  ))
                  q = string
                }
              ))
              size = list(object(
                {
                  apm_query = list(object(
                    {
                      compute = map(string)
                      group_by = list(object(
                        {
                          facet = string
                          limit = number
                          sort  = map(string)
                        }
                      ))
                      index  = string
                      search = map(string)
                    }
                  ))
                  log_query = list(object(
                    {
                      compute = map(string)
                      group_by = list(object(
                        {
                          facet = string
                          limit = number
                          sort  = map(string)
                        }
                      ))
                      index  = string
                      search = map(string)
                    }
                  ))
                  process_query = list(object(
                    {
                      filter_by = list(string)
                      limit     = number
                      metric    = string
                      search_by = string
                    }
                  ))
                  q = string
                }
              ))
            }
          ))
          scope = list(string)
          style = list(object(
            {
              fill_max     = string
              fill_min     = string
              palette      = string
              palette_flip = bool
            }
          ))
          title       = string
          title_align = string
          title_size  = string
        }
      ))
      iframe_definition = list(object(
        {
          url = string
        }
      ))
      image_definition = list(object(
        {
          margin = string
          sizing = string
          url    = string
        }
      ))
      layout = map(string)
      log_stream_definition = list(object(
        {
          columns     = list(string)
          logset      = string
          query       = string
          time        = map(string)
          title       = string
          title_align = string
          title_size  = string
        }
      ))
      manage_status_definition = list(object(
        {
          color_preference = string
          count            = number
          display_format   = string
          hide_zero_counts = bool
          query            = string
          sort             = string
          start            = number
          title            = string
          title_align      = string
          title_size       = string
        }
      ))
      note_definition = list(object(
        {
          background_color = string
          content          = string
          font_size        = string
          show_tick        = bool
          text_align       = string
          tick_edge        = string
          tick_pos         = string
        }
      ))
      query_value_definition = list(object(
        {
          autoscale   = bool
          custom_unit = string
          precision   = number
          request = list(object(
            {
              aggregator = string
              apm_query = list(object(
                {
                  compute = map(string)
                  group_by = list(object(
                    {
                      facet = string
                      limit = number
                      sort  = map(string)
                    }
                  ))
                  index  = string
                  search = map(string)
                }
              ))
              conditional_formats = list(object(
                {
                  comparator      = string
                  custom_bg_color = string
                  custom_fg_color = string
                  hide_value      = bool
                  image_url       = string
                  palette         = string
                  timeframe       = string
                  value           = number
                }
              ))
              log_query = list(object(
                {
                  compute = map(string)
                  group_by = list(object(
                    {
                      facet = string
                      limit = number
                      sort  = map(string)
                    }
                  ))
                  index  = string
                  search = map(string)
                }
              ))
              process_query = list(object(
                {
                  filter_by = list(string)
                  limit     = number
                  metric    = string
                  search_by = string
                }
              ))
              q = string
            }
          ))
          text_align  = string
          time        = map(string)
          title       = string
          title_align = string
          title_size  = string
        }
      ))
      scatterplot_definition = list(object(
        {
          color_by_groups = list(string)
          request = list(object(
            {
              x = list(object(
                {
                  aggregator = string
                  apm_query = list(object(
                    {
                      compute = map(string)
                      group_by = list(object(
                        {
                          facet = string
                          limit = number
                          sort  = map(string)
                        }
                      ))
                      index  = string
                      search = map(string)
                    }
                  ))
                  log_query = list(object(
                    {
                      compute = map(string)
                      group_by = list(object(
                        {
                          facet = string
                          limit = number
                          sort  = map(string)
                        }
                      ))
                      index  = string
                      search = map(string)
                    }
                  ))
                  process_query = list(object(
                    {
                      filter_by = list(string)
                      limit     = number
                      metric    = string
                      search_by = string
                    }
                  ))
                  q = string
                }
              ))
              y = list(object(
                {
                  aggregator = string
                  apm_query = list(object(
                    {
                      compute = map(string)
                      group_by = list(object(
                        {
                          facet = string
                          limit = number
                          sort  = map(string)
                        }
                      ))
                      index  = string
                      search = map(string)
                    }
                  ))
                  log_query = list(object(
                    {
                      compute = map(string)
                      group_by = list(object(
                        {
                          facet = string
                          limit = number
                          sort  = map(string)
                        }
                      ))
                      index  = string
                      search = map(string)
                    }
                  ))
                  process_query = list(object(
                    {
                      filter_by = list(string)
                      limit     = number
                      metric    = string
                      search_by = string
                    }
                  ))
                  q = string
                }
              ))
            }
          ))
          time        = map(string)
          title       = string
          title_align = string
          title_size  = string
          xaxis = list(object(
            {
              include_zero = bool
              label        = string
              max          = string
              min          = string
              scale        = string
            }
          ))
          yaxis = list(object(
            {
              include_zero = bool
              label        = string
              max          = string
              min          = string
              scale        = string
            }
          ))
        }
      ))
      service_level_objective_definition = list(object(
        {
          show_error_budget = bool
          slo_id            = string
          time_windows      = list(string)
          title             = string
          title_align       = string
          title_size        = string
          view_mode         = string
          view_type         = string
        }
      ))
      timeseries_definition = list(object(
        {
          event = list(object(
            {
              q = string
            }
          ))
          legend_size = string
          marker = list(object(
            {
              display_type = string
              label        = string
              value        = string
            }
          ))
          request = list(object(
            {
              apm_query = list(object(
                {
                  compute = map(string)
                  group_by = list(object(
                    {
                      facet = string
                      limit = number
                      sort  = map(string)
                    }
                  ))
                  index  = string
                  search = map(string)
                }
              ))
              display_type = string
              log_query = list(object(
                {
                  compute = map(string)
                  group_by = list(object(
                    {
                      facet = string
                      limit = number
                      sort  = map(string)
                    }
                  ))
                  index  = string
                  search = map(string)
                }
              ))
              metadata = list(object(
                {
                  alias_name = string
                  expression = string
                }
              ))
              process_query = list(object(
                {
                  filter_by = list(string)
                  limit     = number
                  metric    = string
                  search_by = string
                }
              ))
              q = string
              style = list(object(
                {
                  line_type  = string
                  line_width = string
                  palette    = string
                }
              ))
            }
          ))
          show_legend = bool
          time        = map(string)
          title       = string
          title_align = string
          title_size  = string
          yaxis = list(object(
            {
              include_zero = bool
              label        = string
              max          = string
              min          = string
              scale        = string
            }
          ))
        }
      ))
      toplist_definition = list(object(
        {
          request = list(object(
            {
              apm_query = list(object(
                {
                  compute = map(string)
                  group_by = list(object(
                    {
                      facet = string
                      limit = number
                      sort  = map(string)
                    }
                  ))
                  index  = string
                  search = map(string)
                }
              ))
              conditional_formats = list(object(
                {
                  comparator      = string
                  custom_bg_color = string
                  custom_fg_color = string
                  hide_value      = bool
                  image_url       = string
                  palette         = string
                  timeframe       = string
                  value           = number
                }
              ))
              log_query = list(object(
                {
                  compute = map(string)
                  group_by = list(object(
                    {
                      facet = string
                      limit = number
                      sort  = map(string)
                    }
                  ))
                  index  = string
                  search = map(string)
                }
              ))
              process_query = list(object(
                {
                  filter_by = list(string)
                  limit     = number
                  metric    = string
                  search_by = string
                }
              ))
              q = string
              style = list(object(
                {
                  palette = string
                }
              ))
            }
          ))
          time        = map(string)
          title       = string
          title_align = string
          title_size  = string
        }
      ))
      trace_service_definition = list(object(
        {
          display_format     = string
          env                = string
          service            = string
          show_breakdown     = bool
          show_distribution  = bool
          show_errors        = bool
          show_hits          = bool
          show_latency       = bool
          show_resource_list = bool
          size_format        = string
          span_name          = string
          time               = map(string)
          title              = string
          title_align        = string
          title_size         = string
        }
      ))
    }
  ))
}

