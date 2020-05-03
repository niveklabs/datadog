module "datadog_screenboard" {
  source = "./modules/datadog/r/datadog_screenboard"

  height    = null
  read_only = null
  shared    = null
  title     = null
  width     = null

  template_variable = [{
    default = null
    name    = null
    prefix  = null
  }]

  widget = [{
    alert_id                  = null
    auto_refresh              = null
    bgcolor                   = null
    check                     = null
    color                     = null
    color_preference          = null
    columns                   = null
    display_format            = null
    env                       = null
    event_size                = null
    font_size                 = null
    group                     = null
    group_by                  = []
    grouping                  = null
    height                    = null
    hide_zero_counts          = null
    html                      = null
    layout_version            = null
    legend                    = null
    legend_size               = null
    logset                    = null
    manage_status_show_title  = null
    manage_status_title_align = null
    manage_status_title_size  = null
    manage_status_title_text  = null
    margin                    = null
    monitor                   = {}
    must_show_breakdown       = null
    must_show_distribution    = null
    must_show_errors          = null
    must_show_hits            = null
    must_show_latency         = null
    must_show_resource_list   = null
    params                    = {}
    precision                 = null
    query                     = null
    rule = [{
      color     = null
      threshold = null
      timeframe = null
    }]
    service_name        = null
    service_service     = null
    show_last_triggered = null
    size_version        = null
    sizing              = null
    summary_type        = null
    tags                = []
    text                = null
    text_align          = null
    text_size           = null
    tick                = null
    tick_edge           = null
    tick_pos            = null
    tile_def = [{
      autoscale   = null
      custom_unit = null
      event = [{
        q = null
      }]
      group = []
      marker = [{
        label = null
        type  = null
        value = null
      }]
      no_group_hosts  = null
      no_metric_hosts = null
      node_type       = null
      precision       = null
      request = [{
        aggregator = null
        apm_query = [{
          compute = [{
            aggregation = null
            facet       = null
            interval    = null
          }]
          group_by = [{
            facet = null
            limit = null
            sort = [{
              aggregation = null
              facet       = null
              order       = null
            }]
          }]
          index = null
          search = [{
            query = null
          }]
        }]
        change_type = null
        compare_to  = null
        conditional_format = [{
          color           = null
          comparator      = null
          custom_bg_color = null
          invert          = null
          palette         = null
          value           = null
        }]
        extra_col     = null
        increase_good = null
        limit         = null
        log_query = [{
          compute = [{
            aggregation = null
            facet       = null
            interval    = null
          }]
          group_by = [{
            facet = null
            limit = null
            sort = [{
              aggregation = null
              facet       = null
              order       = null
            }]
          }]
          index = null
          search = [{
            query = null
          }]
        }]
        metadata_json = null
        metric        = null
        order_by      = null
        order_dir     = null
        process_query = [{
          filter_by = []
          limit     = null
          metric    = null
          search_by = null
        }]
        q           = null
        query_type  = null
        style       = {}
        tag_filters = []
        text_filter = null
        type        = null
      }]
      scope      = []
      style      = {}
      text_align = null
      viz        = null
    }]
    time        = {}
    timeframes  = []
    title       = null
    title_align = null
    title_size  = null
    type        = null
    unit        = null
    url         = null
    viz_type    = null
    width       = null
    x           = null
    y           = null
  }]
}
