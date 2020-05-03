terraform {
  required_providers {
    datadog = ">= 2.7.0"
  }
}

resource "datadog_timeboard" "this" {
  description = var.description
  read_only   = var.read_only
  title       = var.title

  dynamic "graph" {
    for_each = var.graph
    content {
      autoscale               = graph.value["autoscale"]
      custom_unit             = graph.value["custom_unit"]
      events                  = graph.value["events"]
      group                   = graph.value["group"]
      include_no_metric_hosts = graph.value["include_no_metric_hosts"]
      include_ungrouped_hosts = graph.value["include_ungrouped_hosts"]
      node_type               = graph.value["node_type"]
      precision               = graph.value["precision"]
      scope                   = graph.value["scope"]
      style                   = graph.value["style"]
      text_align              = graph.value["text_align"]
      title                   = graph.value["title"]
      viz                     = graph.value["viz"]
      yaxis                   = graph.value["yaxis"]

      dynamic "marker" {
        for_each = graph.value.marker
        content {
          label = marker.value["label"]
          type  = marker.value["type"]
          value = marker.value["value"]
        }
      }

      dynamic "request" {
        for_each = graph.value.request
        content {
          aggregator      = request.value["aggregator"]
          change_type     = request.value["change_type"]
          compare_to      = request.value["compare_to"]
          extra_col       = request.value["extra_col"]
          increase_good   = request.value["increase_good"]
          metadata_json   = request.value["metadata_json"]
          order_by        = request.value["order_by"]
          order_direction = request.value["order_direction"]
          q               = request.value["q"]
          stacked         = request.value["stacked"]
          style           = request.value["style"]
          type            = request.value["type"]

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
              comparator      = conditional_format.value["comparator"]
              custom_bg_color = conditional_format.value["custom_bg_color"]
              custom_fg_color = conditional_format.value["custom_fg_color"]
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

  dynamic "template_variable" {
    for_each = var.template_variable
    content {
      default = template_variable.value["default"]
      name    = template_variable.value["name"]
      prefix  = template_variable.value["prefix"]
    }
  }

}

