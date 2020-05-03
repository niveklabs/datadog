module "datadog_timeboard" {
  source = "./modules/datadog/r/datadog_timeboard"

  description = null
  read_only   = null
  title       = null

  graph = [{
    autoscale               = null
    custom_unit             = null
    events                  = []
    group                   = []
    include_no_metric_hosts = null
    include_ungrouped_hosts = null
    marker = [{
      label = null
      type  = null
      value = null
    }]
    node_type = null
    precision = null
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
        comparator      = null
        custom_bg_color = null
        custom_fg_color = null
        palette         = null
        value           = null
      }]
      extra_col     = null
      increase_good = null
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
      metadata_json   = null
      order_by        = null
      order_direction = null
      process_query = [{
        filter_by = []
        limit     = null
        metric    = null
        search_by = null
      }]
      q       = null
      stacked = null
      style   = {}
      type    = null
    }]
    scope      = []
    style      = {}
    text_align = null
    title      = null
    viz        = null
    yaxis      = {}
  }]

  template_variable = [{
    default = null
    name    = null
    prefix  = null
  }]
}
