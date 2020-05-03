terraform {
  required_providers {
    datadog = ">= 2.5.0"
  }
}

resource "datadog_screenboard" "this" {
  height    = var.height
  read_only = var.read_only
  shared    = var.shared
  title     = var.title
  width     = var.width

  dynamic "template_variable" {
    for_each = var.template_variable
    content {
      default = template_variable.value["default"]
      name    = template_variable.value["name"]
      prefix  = template_variable.value["prefix"]
    }
  }

  dynamic "widget" {
    for_each = var.widget
    content {
      alert_id                  = widget.value["alert_id"]
      auto_refresh              = widget.value["auto_refresh"]
      bgcolor                   = widget.value["bgcolor"]
      check                     = widget.value["check"]
      color                     = widget.value["color"]
      color_preference          = widget.value["color_preference"]
      columns                   = widget.value["columns"]
      display_format            = widget.value["display_format"]
      env                       = widget.value["env"]
      event_size                = widget.value["event_size"]
      font_size                 = widget.value["font_size"]
      group                     = widget.value["group"]
      group_by                  = widget.value["group_by"]
      grouping                  = widget.value["grouping"]
      height                    = widget.value["height"]
      hide_zero_counts          = widget.value["hide_zero_counts"]
      html                      = widget.value["html"]
      layout_version            = widget.value["layout_version"]
      legend                    = widget.value["legend"]
      legend_size               = widget.value["legend_size"]
      logset                    = widget.value["logset"]
      manage_status_show_title  = widget.value["manage_status_show_title"]
      manage_status_title_align = widget.value["manage_status_title_align"]
      manage_status_title_size  = widget.value["manage_status_title_size"]
      manage_status_title_text  = widget.value["manage_status_title_text"]
      margin                    = widget.value["margin"]
      monitor                   = widget.value["monitor"]
      must_show_breakdown       = widget.value["must_show_breakdown"]
      must_show_distribution    = widget.value["must_show_distribution"]
      must_show_errors          = widget.value["must_show_errors"]
      must_show_hits            = widget.value["must_show_hits"]
      must_show_latency         = widget.value["must_show_latency"]
      must_show_resource_list   = widget.value["must_show_resource_list"]
      params                    = widget.value["params"]
      precision                 = widget.value["precision"]
      query                     = widget.value["query"]
      service_name              = widget.value["service_name"]
      service_service           = widget.value["service_service"]
      size_version              = widget.value["size_version"]
      sizing                    = widget.value["sizing"]
      tags                      = widget.value["tags"]
      text                      = widget.value["text"]
      text_align                = widget.value["text_align"]
      text_size                 = widget.value["text_size"]
      tick                      = widget.value["tick"]
      tick_edge                 = widget.value["tick_edge"]
      tick_pos                  = widget.value["tick_pos"]
      time                      = widget.value["time"]
      timeframes                = widget.value["timeframes"]
      title                     = widget.value["title"]
      title_align               = widget.value["title_align"]
      title_size                = widget.value["title_size"]
      type                      = widget.value["type"]
      unit                      = widget.value["unit"]
      url                       = widget.value["url"]
      viz_type                  = widget.value["viz_type"]
      width                     = widget.value["width"]
      x                         = widget.value["x"]
      y                         = widget.value["y"]

      dynamic "rule" {
        for_each = widget.value.rule
        content {
          color     = rule.value["color"]
          threshold = rule.value["threshold"]
          timeframe = rule.value["timeframe"]
        }
      }

      dynamic "tile_def" {
        for_each = widget.value.tile_def
        content {
          autoscale       = tile_def.value["autoscale"]
          custom_unit     = tile_def.value["custom_unit"]
          group           = tile_def.value["group"]
          no_group_hosts  = tile_def.value["no_group_hosts"]
          no_metric_hosts = tile_def.value["no_metric_hosts"]
          node_type       = tile_def.value["node_type"]
          precision       = tile_def.value["precision"]
          scope           = tile_def.value["scope"]
          style           = tile_def.value["style"]
          text_align      = tile_def.value["text_align"]
          viz             = tile_def.value["viz"]

          dynamic "event" {
            for_each = tile_def.value.event
            content {
              q = event.value["q"]
            }
          }

          dynamic "marker" {
            for_each = tile_def.value.marker
            content {
              label = marker.value["label"]
              type  = marker.value["type"]
              value = marker.value["value"]
            }
          }

          dynamic "request" {
            for_each = tile_def.value.request
            content {
              aggregator    = request.value["aggregator"]
              change_type   = request.value["change_type"]
              compare_to    = request.value["compare_to"]
              extra_col     = request.value["extra_col"]
              increase_good = request.value["increase_good"]
              limit         = request.value["limit"]
              metadata_json = request.value["metadata_json"]
              metric        = request.value["metric"]
              order_by      = request.value["order_by"]
              order_dir     = request.value["order_dir"]
              q             = request.value["q"]
              query_type    = request.value["query_type"]
              style         = request.value["style"]
              tag_filters   = request.value["tag_filters"]
              text_filter   = request.value["text_filter"]
              type          = request.value["type"]

              dynamic "apm_query" {
                for_each = request.value.apm_query
                content {
                  index = apm_query.value["index"]

                  dynamic "compute" {
                    for_each = apm_query.value.compute
                    content {
                      aggregation = compute.value["aggregation"]
                      facet       = compute.value["facet"]
                      interval    = compute.value["interval"]
                    }
                  }

                  dynamic "group_by" {
                    for_each = apm_query.value.group_by
                    content {
                      facet = group_by.value["facet"]
                      limit = group_by.value["limit"]

                      dynamic "sort" {
                        for_each = group_by.value.sort
                        content {
                          aggregation = sort.value["aggregation"]
                          facet       = sort.value["facet"]
                          order       = sort.value["order"]
                        }
                      }

                    }
                  }

                  dynamic "search" {
                    for_each = apm_query.value.search
                    content {
                      query = search.value["query"]
                    }
                  }

                }
              }

              dynamic "conditional_format" {
                for_each = request.value.conditional_format
                content {
                  color           = conditional_format.value["color"]
                  comparator      = conditional_format.value["comparator"]
                  custom_bg_color = conditional_format.value["custom_bg_color"]
                  invert          = conditional_format.value["invert"]
                  palette         = conditional_format.value["palette"]
                  value           = conditional_format.value["value"]
                }
              }

              dynamic "log_query" {
                for_each = request.value.log_query
                content {
                  index = log_query.value["index"]

                  dynamic "compute" {
                    for_each = log_query.value.compute
                    content {
                      aggregation = compute.value["aggregation"]
                      facet       = compute.value["facet"]
                      interval    = compute.value["interval"]
                    }
                  }

                  dynamic "group_by" {
                    for_each = log_query.value.group_by
                    content {
                      facet = group_by.value["facet"]
                      limit = group_by.value["limit"]

                      dynamic "sort" {
                        for_each = group_by.value.sort
                        content {
                          aggregation = sort.value["aggregation"]
                          facet       = sort.value["facet"]
                          order       = sort.value["order"]
                        }
                      }

                    }
                  }

                  dynamic "search" {
                    for_each = log_query.value.search
                    content {
                      query = search.value["query"]
                    }
                  }

                }
              }

              dynamic "process_query" {
                for_each = request.value.process_query
                content {
                  filter_by = process_query.value["filter_by"]
                  limit     = process_query.value["limit"]
                  metric    = process_query.value["metric"]
                  search_by = process_query.value["search_by"]
                }
              }

            }
          }

        }
      }

    }
  }

}

