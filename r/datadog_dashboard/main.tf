terraform {
  required_providers {
    datadog = ">= 2.7.0"
  }
}

resource "datadog_dashboard" "this" {
  description  = var.description
  is_read_only = var.is_read_only
  layout_type  = var.layout_type
  notify_list  = var.notify_list
  title        = var.title

  dynamic "template_variable" {
    for_each = var.template_variable
    content {
      default = template_variable.value["default"]
      name    = template_variable.value["name"]
      prefix  = template_variable.value["prefix"]
    }
  }

  dynamic "template_variable_preset" {
    for_each = var.template_variable_preset
    content {
      name = template_variable_preset.value["name"]

      dynamic "template_variable" {
        for_each = template_variable_preset.value.template_variable
        content {
          name  = template_variable.value["name"]
          value = template_variable.value["value"]
        }
      }

    }
  }

  dynamic "widget" {
    for_each = var.widget
    content {
      layout = widget.value["layout"]

      dynamic "alert_graph_definition" {
        for_each = widget.value.alert_graph_definition
        content {
          alert_id    = alert_graph_definition.value["alert_id"]
          time        = alert_graph_definition.value["time"]
          title       = alert_graph_definition.value["title"]
          title_align = alert_graph_definition.value["title_align"]
          title_size  = alert_graph_definition.value["title_size"]
          viz_type    = alert_graph_definition.value["viz_type"]
        }
      }

      dynamic "alert_value_definition" {
        for_each = widget.value.alert_value_definition
        content {
          alert_id    = alert_value_definition.value["alert_id"]
          precision   = alert_value_definition.value["precision"]
          text_align  = alert_value_definition.value["text_align"]
          title       = alert_value_definition.value["title"]
          title_align = alert_value_definition.value["title_align"]
          title_size  = alert_value_definition.value["title_size"]
          unit        = alert_value_definition.value["unit"]
        }
      }

      dynamic "change_definition" {
        for_each = widget.value.change_definition
        content {
          time        = change_definition.value["time"]
          title       = change_definition.value["title"]
          title_align = change_definition.value["title_align"]
          title_size  = change_definition.value["title_size"]

          dynamic "request" {
            for_each = change_definition.value.request
            content {
              change_type   = request.value["change_type"]
              compare_to    = request.value["compare_to"]
              increase_good = request.value["increase_good"]
              order_by      = request.value["order_by"]
              order_dir     = request.value["order_dir"]
              q             = request.value["q"]
              show_present  = request.value["show_present"]

              dynamic "apm_query" {
                for_each = request.value.apm_query
                content {
                  compute = apm_query.value["compute"]
                  index   = apm_query.value["index"]
                  search  = apm_query.value["search"]

                  dynamic "group_by" {
                    for_each = apm_query.value.group_by
                    content {
                      facet = group_by.value["facet"]
                      limit = group_by.value["limit"]
                      sort  = group_by.value["sort"]
                    }
                  }

                }
              }

              dynamic "log_query" {
                for_each = request.value.log_query
                content {
                  compute = log_query.value["compute"]
                  index   = log_query.value["index"]
                  search  = log_query.value["search"]

                  dynamic "group_by" {
                    for_each = log_query.value.group_by
                    content {
                      facet = group_by.value["facet"]
                      limit = group_by.value["limit"]
                      sort  = group_by.value["sort"]
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

      dynamic "check_status_definition" {
        for_each = widget.value.check_status_definition
        content {
          check       = check_status_definition.value["check"]
          group       = check_status_definition.value["group"]
          group_by    = check_status_definition.value["group_by"]
          grouping    = check_status_definition.value["grouping"]
          tags        = check_status_definition.value["tags"]
          time        = check_status_definition.value["time"]
          title       = check_status_definition.value["title"]
          title_align = check_status_definition.value["title_align"]
          title_size  = check_status_definition.value["title_size"]
        }
      }

      dynamic "distribution_definition" {
        for_each = widget.value.distribution_definition
        content {
          time        = distribution_definition.value["time"]
          title       = distribution_definition.value["title"]
          title_align = distribution_definition.value["title_align"]
          title_size  = distribution_definition.value["title_size"]

          dynamic "request" {
            for_each = distribution_definition.value.request
            content {
              q = request.value["q"]

              dynamic "apm_query" {
                for_each = request.value.apm_query
                content {
                  compute = apm_query.value["compute"]
                  index   = apm_query.value["index"]
                  search  = apm_query.value["search"]

                  dynamic "group_by" {
                    for_each = apm_query.value.group_by
                    content {
                      facet = group_by.value["facet"]
                      limit = group_by.value["limit"]
                      sort  = group_by.value["sort"]
                    }
                  }

                }
              }

              dynamic "log_query" {
                for_each = request.value.log_query
                content {
                  compute = log_query.value["compute"]
                  index   = log_query.value["index"]
                  search  = log_query.value["search"]

                  dynamic "group_by" {
                    for_each = log_query.value.group_by
                    content {
                      facet = group_by.value["facet"]
                      limit = group_by.value["limit"]
                      sort  = group_by.value["sort"]
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

              dynamic "style" {
                for_each = request.value.style
                content {
                  palette = style.value["palette"]
                }
              }

            }
          }

        }
      }

      dynamic "event_stream_definition" {
        for_each = widget.value.event_stream_definition
        content {
          event_size  = event_stream_definition.value["event_size"]
          query       = event_stream_definition.value["query"]
          time        = event_stream_definition.value["time"]
          title       = event_stream_definition.value["title"]
          title_align = event_stream_definition.value["title_align"]
          title_size  = event_stream_definition.value["title_size"]
        }
      }

      dynamic "event_timeline_definition" {
        for_each = widget.value.event_timeline_definition
        content {
          query       = event_timeline_definition.value["query"]
          time        = event_timeline_definition.value["time"]
          title       = event_timeline_definition.value["title"]
          title_align = event_timeline_definition.value["title_align"]
          title_size  = event_timeline_definition.value["title_size"]
        }
      }

      dynamic "free_text_definition" {
        for_each = widget.value.free_text_definition
        content {
          color      = free_text_definition.value["color"]
          font_size  = free_text_definition.value["font_size"]
          text       = free_text_definition.value["text"]
          text_align = free_text_definition.value["text_align"]
        }
      }

      dynamic "group_definition" {
        for_each = widget.value.group_definition
        content {
          layout_type = group_definition.value["layout_type"]
          title       = group_definition.value["title"]

          dynamic "widget" {
            for_each = group_definition.value.widget
            content {
              layout = widget.value["layout"]

              dynamic "alert_graph_definition" {
                for_each = widget.value.alert_graph_definition
                content {
                  alert_id    = alert_graph_definition.value["alert_id"]
                  time        = alert_graph_definition.value["time"]
                  title       = alert_graph_definition.value["title"]
                  title_align = alert_graph_definition.value["title_align"]
                  title_size  = alert_graph_definition.value["title_size"]
                  viz_type    = alert_graph_definition.value["viz_type"]
                }
              }

              dynamic "alert_value_definition" {
                for_each = widget.value.alert_value_definition
                content {
                  alert_id    = alert_value_definition.value["alert_id"]
                  precision   = alert_value_definition.value["precision"]
                  text_align  = alert_value_definition.value["text_align"]
                  title       = alert_value_definition.value["title"]
                  title_align = alert_value_definition.value["title_align"]
                  title_size  = alert_value_definition.value["title_size"]
                  unit        = alert_value_definition.value["unit"]
                }
              }

              dynamic "change_definition" {
                for_each = widget.value.change_definition
                content {
                  time        = change_definition.value["time"]
                  title       = change_definition.value["title"]
                  title_align = change_definition.value["title_align"]
                  title_size  = change_definition.value["title_size"]

                  dynamic "request" {
                    for_each = change_definition.value.request
                    content {
                      change_type   = request.value["change_type"]
                      compare_to    = request.value["compare_to"]
                      increase_good = request.value["increase_good"]
                      order_by      = request.value["order_by"]
                      order_dir     = request.value["order_dir"]
                      q             = request.value["q"]
                      show_present  = request.value["show_present"]

                      dynamic "apm_query" {
                        for_each = request.value.apm_query
                        content {
                          compute = apm_query.value["compute"]
                          index   = apm_query.value["index"]
                          search  = apm_query.value["search"]

                          dynamic "group_by" {
                            for_each = apm_query.value.group_by
                            content {
                              facet = group_by.value["facet"]
                              limit = group_by.value["limit"]
                              sort  = group_by.value["sort"]
                            }
                          }

                        }
                      }

                      dynamic "log_query" {
                        for_each = request.value.log_query
                        content {
                          compute = log_query.value["compute"]
                          index   = log_query.value["index"]
                          search  = log_query.value["search"]

                          dynamic "group_by" {
                            for_each = log_query.value.group_by
                            content {
                              facet = group_by.value["facet"]
                              limit = group_by.value["limit"]
                              sort  = group_by.value["sort"]
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

              dynamic "check_status_definition" {
                for_each = widget.value.check_status_definition
                content {
                  check       = check_status_definition.value["check"]
                  group       = check_status_definition.value["group"]
                  group_by    = check_status_definition.value["group_by"]
                  grouping    = check_status_definition.value["grouping"]
                  tags        = check_status_definition.value["tags"]
                  time        = check_status_definition.value["time"]
                  title       = check_status_definition.value["title"]
                  title_align = check_status_definition.value["title_align"]
                  title_size  = check_status_definition.value["title_size"]
                }
              }

              dynamic "distribution_definition" {
                for_each = widget.value.distribution_definition
                content {
                  time        = distribution_definition.value["time"]
                  title       = distribution_definition.value["title"]
                  title_align = distribution_definition.value["title_align"]
                  title_size  = distribution_definition.value["title_size"]

                  dynamic "request" {
                    for_each = distribution_definition.value.request
                    content {
                      q = request.value["q"]

                      dynamic "apm_query" {
                        for_each = request.value.apm_query
                        content {
                          compute = apm_query.value["compute"]
                          index   = apm_query.value["index"]
                          search  = apm_query.value["search"]

                          dynamic "group_by" {
                            for_each = apm_query.value.group_by
                            content {
                              facet = group_by.value["facet"]
                              limit = group_by.value["limit"]
                              sort  = group_by.value["sort"]
                            }
                          }

                        }
                      }

                      dynamic "log_query" {
                        for_each = request.value.log_query
                        content {
                          compute = log_query.value["compute"]
                          index   = log_query.value["index"]
                          search  = log_query.value["search"]

                          dynamic "group_by" {
                            for_each = log_query.value.group_by
                            content {
                              facet = group_by.value["facet"]
                              limit = group_by.value["limit"]
                              sort  = group_by.value["sort"]
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

                      dynamic "style" {
                        for_each = request.value.style
                        content {
                          palette = style.value["palette"]
                        }
                      }

                    }
                  }

                }
              }

              dynamic "event_stream_definition" {
                for_each = widget.value.event_stream_definition
                content {
                  event_size  = event_stream_definition.value["event_size"]
                  query       = event_stream_definition.value["query"]
                  time        = event_stream_definition.value["time"]
                  title       = event_stream_definition.value["title"]
                  title_align = event_stream_definition.value["title_align"]
                  title_size  = event_stream_definition.value["title_size"]
                }
              }

              dynamic "event_timeline_definition" {
                for_each = widget.value.event_timeline_definition
                content {
                  query       = event_timeline_definition.value["query"]
                  time        = event_timeline_definition.value["time"]
                  title       = event_timeline_definition.value["title"]
                  title_align = event_timeline_definition.value["title_align"]
                  title_size  = event_timeline_definition.value["title_size"]
                }
              }

              dynamic "free_text_definition" {
                for_each = widget.value.free_text_definition
                content {
                  color      = free_text_definition.value["color"]
                  font_size  = free_text_definition.value["font_size"]
                  text       = free_text_definition.value["text"]
                  text_align = free_text_definition.value["text_align"]
                }
              }

              dynamic "heatmap_definition" {
                for_each = widget.value.heatmap_definition
                content {
                  time        = heatmap_definition.value["time"]
                  title       = heatmap_definition.value["title"]
                  title_align = heatmap_definition.value["title_align"]
                  title_size  = heatmap_definition.value["title_size"]

                  dynamic "request" {
                    for_each = heatmap_definition.value.request
                    content {
                      q = request.value["q"]

                      dynamic "apm_query" {
                        for_each = request.value.apm_query
                        content {
                          compute = apm_query.value["compute"]
                          index   = apm_query.value["index"]
                          search  = apm_query.value["search"]

                          dynamic "group_by" {
                            for_each = apm_query.value.group_by
                            content {
                              facet = group_by.value["facet"]
                              limit = group_by.value["limit"]
                              sort  = group_by.value["sort"]
                            }
                          }

                        }
                      }

                      dynamic "log_query" {
                        for_each = request.value.log_query
                        content {
                          compute = log_query.value["compute"]
                          index   = log_query.value["index"]
                          search  = log_query.value["search"]

                          dynamic "group_by" {
                            for_each = log_query.value.group_by
                            content {
                              facet = group_by.value["facet"]
                              limit = group_by.value["limit"]
                              sort  = group_by.value["sort"]
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

                      dynamic "style" {
                        for_each = request.value.style
                        content {
                          palette = style.value["palette"]
                        }
                      }

                    }
                  }

                  dynamic "yaxis" {
                    for_each = heatmap_definition.value.yaxis
                    content {
                      include_zero = yaxis.value["include_zero"]
                      label        = yaxis.value["label"]
                      max          = yaxis.value["max"]
                      min          = yaxis.value["min"]
                      scale        = yaxis.value["scale"]
                    }
                  }

                }
              }

              dynamic "hostmap_definition" {
                for_each = widget.value.hostmap_definition
                content {
                  group           = hostmap_definition.value["group"]
                  no_group_hosts  = hostmap_definition.value["no_group_hosts"]
                  no_metric_hosts = hostmap_definition.value["no_metric_hosts"]
                  node_type       = hostmap_definition.value["node_type"]
                  scope           = hostmap_definition.value["scope"]
                  title           = hostmap_definition.value["title"]
                  title_align     = hostmap_definition.value["title_align"]
                  title_size      = hostmap_definition.value["title_size"]

                  dynamic "request" {
                    for_each = hostmap_definition.value.request
                    content {

                      dynamic "fill" {
                        for_each = request.value.fill
                        content {
                          q = fill.value["q"]

                          dynamic "apm_query" {
                            for_each = fill.value.apm_query
                            content {
                              compute = apm_query.value["compute"]
                              index   = apm_query.value["index"]
                              search  = apm_query.value["search"]

                              dynamic "group_by" {
                                for_each = apm_query.value.group_by
                                content {
                                  facet = group_by.value["facet"]
                                  limit = group_by.value["limit"]
                                  sort  = group_by.value["sort"]
                                }
                              }

                            }
                          }

                          dynamic "log_query" {
                            for_each = fill.value.log_query
                            content {
                              compute = log_query.value["compute"]
                              index   = log_query.value["index"]
                              search  = log_query.value["search"]

                              dynamic "group_by" {
                                for_each = log_query.value.group_by
                                content {
                                  facet = group_by.value["facet"]
                                  limit = group_by.value["limit"]
                                  sort  = group_by.value["sort"]
                                }
                              }

                            }
                          }

                          dynamic "process_query" {
                            for_each = fill.value.process_query
                            content {
                              filter_by = process_query.value["filter_by"]
                              limit     = process_query.value["limit"]
                              metric    = process_query.value["metric"]
                              search_by = process_query.value["search_by"]
                            }
                          }

                        }
                      }

                      dynamic "size" {
                        for_each = request.value.size
                        content {
                          q = size.value["q"]

                          dynamic "apm_query" {
                            for_each = size.value.apm_query
                            content {
                              compute = apm_query.value["compute"]
                              index   = apm_query.value["index"]
                              search  = apm_query.value["search"]

                              dynamic "group_by" {
                                for_each = apm_query.value.group_by
                                content {
                                  facet = group_by.value["facet"]
                                  limit = group_by.value["limit"]
                                  sort  = group_by.value["sort"]
                                }
                              }

                            }
                          }

                          dynamic "log_query" {
                            for_each = size.value.log_query
                            content {
                              compute = log_query.value["compute"]
                              index   = log_query.value["index"]
                              search  = log_query.value["search"]

                              dynamic "group_by" {
                                for_each = log_query.value.group_by
                                content {
                                  facet = group_by.value["facet"]
                                  limit = group_by.value["limit"]
                                  sort  = group_by.value["sort"]
                                }
                              }

                            }
                          }

                          dynamic "process_query" {
                            for_each = size.value.process_query
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

                  dynamic "style" {
                    for_each = hostmap_definition.value.style
                    content {
                      fill_max     = style.value["fill_max"]
                      fill_min     = style.value["fill_min"]
                      palette      = style.value["palette"]
                      palette_flip = style.value["palette_flip"]
                    }
                  }

                }
              }

              dynamic "iframe_definition" {
                for_each = widget.value.iframe_definition
                content {
                  url = iframe_definition.value["url"]
                }
              }

              dynamic "image_definition" {
                for_each = widget.value.image_definition
                content {
                  margin = image_definition.value["margin"]
                  sizing = image_definition.value["sizing"]
                  url    = image_definition.value["url"]
                }
              }

              dynamic "log_stream_definition" {
                for_each = widget.value.log_stream_definition
                content {
                  columns     = log_stream_definition.value["columns"]
                  logset      = log_stream_definition.value["logset"]
                  query       = log_stream_definition.value["query"]
                  time        = log_stream_definition.value["time"]
                  title       = log_stream_definition.value["title"]
                  title_align = log_stream_definition.value["title_align"]
                  title_size  = log_stream_definition.value["title_size"]
                }
              }

              dynamic "manage_status_definition" {
                for_each = widget.value.manage_status_definition
                content {
                  color_preference    = manage_status_definition.value["color_preference"]
                  count               = manage_status_definition.value["count"]
                  display_format      = manage_status_definition.value["display_format"]
                  hide_zero_counts    = manage_status_definition.value["hide_zero_counts"]
                  query               = manage_status_definition.value["query"]
                  show_last_triggered = manage_status_definition.value["show_last_triggered"]
                  sort                = manage_status_definition.value["sort"]
                  start               = manage_status_definition.value["start"]
                  summary_type        = manage_status_definition.value["summary_type"]
                  title               = manage_status_definition.value["title"]
                  title_align         = manage_status_definition.value["title_align"]
                  title_size          = manage_status_definition.value["title_size"]
                }
              }

              dynamic "note_definition" {
                for_each = widget.value.note_definition
                content {
                  background_color = note_definition.value["background_color"]
                  content          = note_definition.value["content"]
                  font_size        = note_definition.value["font_size"]
                  show_tick        = note_definition.value["show_tick"]
                  text_align       = note_definition.value["text_align"]
                  tick_edge        = note_definition.value["tick_edge"]
                  tick_pos         = note_definition.value["tick_pos"]
                }
              }

              dynamic "query_table_definition" {
                for_each = widget.value.query_table_definition
                content {
                  time        = query_table_definition.value["time"]
                  title       = query_table_definition.value["title"]
                  title_align = query_table_definition.value["title_align"]
                  title_size  = query_table_definition.value["title_size"]

                  dynamic "request" {
                    for_each = query_table_definition.value.request
                    content {
                      aggregator = request.value["aggregator"]
                      alias      = request.value["alias"]
                      limit      = request.value["limit"]
                      order      = request.value["order"]
                      q          = request.value["q"]

                      dynamic "apm_query" {
                        for_each = request.value.apm_query
                        content {
                          compute = apm_query.value["compute"]
                          index   = apm_query.value["index"]
                          search  = apm_query.value["search"]

                          dynamic "group_by" {
                            for_each = apm_query.value.group_by
                            content {
                              facet = group_by.value["facet"]
                              limit = group_by.value["limit"]
                              sort  = group_by.value["sort"]
                            }
                          }

                        }
                      }

                      dynamic "conditional_formats" {
                        for_each = request.value.conditional_formats
                        content {
                          comparator      = conditional_formats.value["comparator"]
                          custom_bg_color = conditional_formats.value["custom_bg_color"]
                          custom_fg_color = conditional_formats.value["custom_fg_color"]
                          hide_value      = conditional_formats.value["hide_value"]
                          image_url       = conditional_formats.value["image_url"]
                          palette         = conditional_formats.value["palette"]
                          timeframe       = conditional_formats.value["timeframe"]
                          value           = conditional_formats.value["value"]
                        }
                      }

                      dynamic "log_query" {
                        for_each = request.value.log_query
                        content {
                          compute = log_query.value["compute"]
                          index   = log_query.value["index"]
                          search  = log_query.value["search"]

                          dynamic "group_by" {
                            for_each = log_query.value.group_by
                            content {
                              facet = group_by.value["facet"]
                              limit = group_by.value["limit"]
                              sort  = group_by.value["sort"]
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

              dynamic "query_value_definition" {
                for_each = widget.value.query_value_definition
                content {
                  autoscale   = query_value_definition.value["autoscale"]
                  custom_unit = query_value_definition.value["custom_unit"]
                  precision   = query_value_definition.value["precision"]
                  text_align  = query_value_definition.value["text_align"]
                  time        = query_value_definition.value["time"]
                  title       = query_value_definition.value["title"]
                  title_align = query_value_definition.value["title_align"]
                  title_size  = query_value_definition.value["title_size"]

                  dynamic "request" {
                    for_each = query_value_definition.value.request
                    content {
                      aggregator = request.value["aggregator"]
                      q          = request.value["q"]

                      dynamic "apm_query" {
                        for_each = request.value.apm_query
                        content {
                          compute = apm_query.value["compute"]
                          index   = apm_query.value["index"]
                          search  = apm_query.value["search"]

                          dynamic "group_by" {
                            for_each = apm_query.value.group_by
                            content {
                              facet = group_by.value["facet"]
                              limit = group_by.value["limit"]
                              sort  = group_by.value["sort"]
                            }
                          }

                        }
                      }

                      dynamic "conditional_formats" {
                        for_each = request.value.conditional_formats
                        content {
                          comparator      = conditional_formats.value["comparator"]
                          custom_bg_color = conditional_formats.value["custom_bg_color"]
                          custom_fg_color = conditional_formats.value["custom_fg_color"]
                          hide_value      = conditional_formats.value["hide_value"]
                          image_url       = conditional_formats.value["image_url"]
                          palette         = conditional_formats.value["palette"]
                          timeframe       = conditional_formats.value["timeframe"]
                          value           = conditional_formats.value["value"]
                        }
                      }

                      dynamic "log_query" {
                        for_each = request.value.log_query
                        content {
                          compute = log_query.value["compute"]
                          index   = log_query.value["index"]
                          search  = log_query.value["search"]

                          dynamic "group_by" {
                            for_each = log_query.value.group_by
                            content {
                              facet = group_by.value["facet"]
                              limit = group_by.value["limit"]
                              sort  = group_by.value["sort"]
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

              dynamic "scatterplot_definition" {
                for_each = widget.value.scatterplot_definition
                content {
                  color_by_groups = scatterplot_definition.value["color_by_groups"]
                  time            = scatterplot_definition.value["time"]
                  title           = scatterplot_definition.value["title"]
                  title_align     = scatterplot_definition.value["title_align"]
                  title_size      = scatterplot_definition.value["title_size"]

                  dynamic "request" {
                    for_each = scatterplot_definition.value.request
                    content {

                      dynamic "x" {
                        for_each = request.value.x
                        content {
                          aggregator = x.value["aggregator"]
                          q          = x.value["q"]

                          dynamic "apm_query" {
                            for_each = x.value.apm_query
                            content {
                              compute = apm_query.value["compute"]
                              index   = apm_query.value["index"]
                              search  = apm_query.value["search"]

                              dynamic "group_by" {
                                for_each = apm_query.value.group_by
                                content {
                                  facet = group_by.value["facet"]
                                  limit = group_by.value["limit"]
                                  sort  = group_by.value["sort"]
                                }
                              }

                            }
                          }

                          dynamic "log_query" {
                            for_each = x.value.log_query
                            content {
                              compute = log_query.value["compute"]
                              index   = log_query.value["index"]
                              search  = log_query.value["search"]

                              dynamic "group_by" {
                                for_each = log_query.value.group_by
                                content {
                                  facet = group_by.value["facet"]
                                  limit = group_by.value["limit"]
                                  sort  = group_by.value["sort"]
                                }
                              }

                            }
                          }

                          dynamic "process_query" {
                            for_each = x.value.process_query
                            content {
                              filter_by = process_query.value["filter_by"]
                              limit     = process_query.value["limit"]
                              metric    = process_query.value["metric"]
                              search_by = process_query.value["search_by"]
                            }
                          }

                        }
                      }

                      dynamic "y" {
                        for_each = request.value.y
                        content {
                          aggregator = y.value["aggregator"]
                          q          = y.value["q"]

                          dynamic "apm_query" {
                            for_each = y.value.apm_query
                            content {
                              compute = apm_query.value["compute"]
                              index   = apm_query.value["index"]
                              search  = apm_query.value["search"]

                              dynamic "group_by" {
                                for_each = apm_query.value.group_by
                                content {
                                  facet = group_by.value["facet"]
                                  limit = group_by.value["limit"]
                                  sort  = group_by.value["sort"]
                                }
                              }

                            }
                          }

                          dynamic "log_query" {
                            for_each = y.value.log_query
                            content {
                              compute = log_query.value["compute"]
                              index   = log_query.value["index"]
                              search  = log_query.value["search"]

                              dynamic "group_by" {
                                for_each = log_query.value.group_by
                                content {
                                  facet = group_by.value["facet"]
                                  limit = group_by.value["limit"]
                                  sort  = group_by.value["sort"]
                                }
                              }

                            }
                          }

                          dynamic "process_query" {
                            for_each = y.value.process_query
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

                  dynamic "xaxis" {
                    for_each = scatterplot_definition.value.xaxis
                    content {
                      include_zero = xaxis.value["include_zero"]
                      label        = xaxis.value["label"]
                      max          = xaxis.value["max"]
                      min          = xaxis.value["min"]
                      scale        = xaxis.value["scale"]
                    }
                  }

                  dynamic "yaxis" {
                    for_each = scatterplot_definition.value.yaxis
                    content {
                      include_zero = yaxis.value["include_zero"]
                      label        = yaxis.value["label"]
                      max          = yaxis.value["max"]
                      min          = yaxis.value["min"]
                      scale        = yaxis.value["scale"]
                    }
                  }

                }
              }

              dynamic "service_level_objective_definition" {
                for_each = widget.value.service_level_objective_definition
                content {
                  show_error_budget = service_level_objective_definition.value["show_error_budget"]
                  slo_id            = service_level_objective_definition.value["slo_id"]
                  time_windows      = service_level_objective_definition.value["time_windows"]
                  title             = service_level_objective_definition.value["title"]
                  title_align       = service_level_objective_definition.value["title_align"]
                  title_size        = service_level_objective_definition.value["title_size"]
                  view_mode         = service_level_objective_definition.value["view_mode"]
                  view_type         = service_level_objective_definition.value["view_type"]
                }
              }

              dynamic "timeseries_definition" {
                for_each = widget.value.timeseries_definition
                content {
                  legend_size = timeseries_definition.value["legend_size"]
                  show_legend = timeseries_definition.value["show_legend"]
                  time        = timeseries_definition.value["time"]
                  title       = timeseries_definition.value["title"]
                  title_align = timeseries_definition.value["title_align"]
                  title_size  = timeseries_definition.value["title_size"]

                  dynamic "event" {
                    for_each = timeseries_definition.value.event
                    content {
                      q = event.value["q"]
                    }
                  }

                  dynamic "marker" {
                    for_each = timeseries_definition.value.marker
                    content {
                      display_type = marker.value["display_type"]
                      label        = marker.value["label"]
                      value        = marker.value["value"]
                    }
                  }

                  dynamic "request" {
                    for_each = timeseries_definition.value.request
                    content {
                      display_type = request.value["display_type"]
                      q            = request.value["q"]

                      dynamic "apm_query" {
                        for_each = request.value.apm_query
                        content {
                          compute = apm_query.value["compute"]
                          index   = apm_query.value["index"]
                          search  = apm_query.value["search"]

                          dynamic "group_by" {
                            for_each = apm_query.value.group_by
                            content {
                              facet = group_by.value["facet"]
                              limit = group_by.value["limit"]
                              sort  = group_by.value["sort"]
                            }
                          }

                        }
                      }

                      dynamic "log_query" {
                        for_each = request.value.log_query
                        content {
                          compute = log_query.value["compute"]
                          index   = log_query.value["index"]
                          search  = log_query.value["search"]

                          dynamic "group_by" {
                            for_each = log_query.value.group_by
                            content {
                              facet = group_by.value["facet"]
                              limit = group_by.value["limit"]
                              sort  = group_by.value["sort"]
                            }
                          }

                        }
                      }

                      dynamic "metadata" {
                        for_each = request.value.metadata
                        content {
                          alias_name = metadata.value["alias_name"]
                          expression = metadata.value["expression"]
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

                      dynamic "style" {
                        for_each = request.value.style
                        content {
                          line_type  = style.value["line_type"]
                          line_width = style.value["line_width"]
                          palette    = style.value["palette"]
                        }
                      }

                    }
                  }

                  dynamic "yaxis" {
                    for_each = timeseries_definition.value.yaxis
                    content {
                      include_zero = yaxis.value["include_zero"]
                      label        = yaxis.value["label"]
                      max          = yaxis.value["max"]
                      min          = yaxis.value["min"]
                      scale        = yaxis.value["scale"]
                    }
                  }

                }
              }

              dynamic "toplist_definition" {
                for_each = widget.value.toplist_definition
                content {
                  time        = toplist_definition.value["time"]
                  title       = toplist_definition.value["title"]
                  title_align = toplist_definition.value["title_align"]
                  title_size  = toplist_definition.value["title_size"]

                  dynamic "request" {
                    for_each = toplist_definition.value.request
                    content {
                      q = request.value["q"]

                      dynamic "apm_query" {
                        for_each = request.value.apm_query
                        content {
                          compute = apm_query.value["compute"]
                          index   = apm_query.value["index"]
                          search  = apm_query.value["search"]

                          dynamic "group_by" {
                            for_each = apm_query.value.group_by
                            content {
                              facet = group_by.value["facet"]
                              limit = group_by.value["limit"]
                              sort  = group_by.value["sort"]
                            }
                          }

                        }
                      }

                      dynamic "conditional_formats" {
                        for_each = request.value.conditional_formats
                        content {
                          comparator      = conditional_formats.value["comparator"]
                          custom_bg_color = conditional_formats.value["custom_bg_color"]
                          custom_fg_color = conditional_formats.value["custom_fg_color"]
                          hide_value      = conditional_formats.value["hide_value"]
                          image_url       = conditional_formats.value["image_url"]
                          palette         = conditional_formats.value["palette"]
                          timeframe       = conditional_formats.value["timeframe"]
                          value           = conditional_formats.value["value"]
                        }
                      }

                      dynamic "log_query" {
                        for_each = request.value.log_query
                        content {
                          compute = log_query.value["compute"]
                          index   = log_query.value["index"]
                          search  = log_query.value["search"]

                          dynamic "group_by" {
                            for_each = log_query.value.group_by
                            content {
                              facet = group_by.value["facet"]
                              limit = group_by.value["limit"]
                              sort  = group_by.value["sort"]
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

                      dynamic "style" {
                        for_each = request.value.style
                        content {
                          palette = style.value["palette"]
                        }
                      }

                    }
                  }

                }
              }

              dynamic "trace_service_definition" {
                for_each = widget.value.trace_service_definition
                content {
                  display_format     = trace_service_definition.value["display_format"]
                  env                = trace_service_definition.value["env"]
                  service            = trace_service_definition.value["service"]
                  show_breakdown     = trace_service_definition.value["show_breakdown"]
                  show_distribution  = trace_service_definition.value["show_distribution"]
                  show_errors        = trace_service_definition.value["show_errors"]
                  show_hits          = trace_service_definition.value["show_hits"]
                  show_latency       = trace_service_definition.value["show_latency"]
                  show_resource_list = trace_service_definition.value["show_resource_list"]
                  size_format        = trace_service_definition.value["size_format"]
                  span_name          = trace_service_definition.value["span_name"]
                  time               = trace_service_definition.value["time"]
                  title              = trace_service_definition.value["title"]
                  title_align        = trace_service_definition.value["title_align"]
                  title_size         = trace_service_definition.value["title_size"]
                }
              }

            }
          }

        }
      }

      dynamic "heatmap_definition" {
        for_each = widget.value.heatmap_definition
        content {
          time        = heatmap_definition.value["time"]
          title       = heatmap_definition.value["title"]
          title_align = heatmap_definition.value["title_align"]
          title_size  = heatmap_definition.value["title_size"]

          dynamic "request" {
            for_each = heatmap_definition.value.request
            content {
              q = request.value["q"]

              dynamic "apm_query" {
                for_each = request.value.apm_query
                content {
                  compute = apm_query.value["compute"]
                  index   = apm_query.value["index"]
                  search  = apm_query.value["search"]

                  dynamic "group_by" {
                    for_each = apm_query.value.group_by
                    content {
                      facet = group_by.value["facet"]
                      limit = group_by.value["limit"]
                      sort  = group_by.value["sort"]
                    }
                  }

                }
              }

              dynamic "log_query" {
                for_each = request.value.log_query
                content {
                  compute = log_query.value["compute"]
                  index   = log_query.value["index"]
                  search  = log_query.value["search"]

                  dynamic "group_by" {
                    for_each = log_query.value.group_by
                    content {
                      facet = group_by.value["facet"]
                      limit = group_by.value["limit"]
                      sort  = group_by.value["sort"]
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

              dynamic "style" {
                for_each = request.value.style
                content {
                  palette = style.value["palette"]
                }
              }

            }
          }

          dynamic "yaxis" {
            for_each = heatmap_definition.value.yaxis
            content {
              include_zero = yaxis.value["include_zero"]
              label        = yaxis.value["label"]
              max          = yaxis.value["max"]
              min          = yaxis.value["min"]
              scale        = yaxis.value["scale"]
            }
          }

        }
      }

      dynamic "hostmap_definition" {
        for_each = widget.value.hostmap_definition
        content {
          group           = hostmap_definition.value["group"]
          no_group_hosts  = hostmap_definition.value["no_group_hosts"]
          no_metric_hosts = hostmap_definition.value["no_metric_hosts"]
          node_type       = hostmap_definition.value["node_type"]
          scope           = hostmap_definition.value["scope"]
          title           = hostmap_definition.value["title"]
          title_align     = hostmap_definition.value["title_align"]
          title_size      = hostmap_definition.value["title_size"]

          dynamic "request" {
            for_each = hostmap_definition.value.request
            content {

              dynamic "fill" {
                for_each = request.value.fill
                content {
                  q = fill.value["q"]

                  dynamic "apm_query" {
                    for_each = fill.value.apm_query
                    content {
                      compute = apm_query.value["compute"]
                      index   = apm_query.value["index"]
                      search  = apm_query.value["search"]

                      dynamic "group_by" {
                        for_each = apm_query.value.group_by
                        content {
                          facet = group_by.value["facet"]
                          limit = group_by.value["limit"]
                          sort  = group_by.value["sort"]
                        }
                      }

                    }
                  }

                  dynamic "log_query" {
                    for_each = fill.value.log_query
                    content {
                      compute = log_query.value["compute"]
                      index   = log_query.value["index"]
                      search  = log_query.value["search"]

                      dynamic "group_by" {
                        for_each = log_query.value.group_by
                        content {
                          facet = group_by.value["facet"]
                          limit = group_by.value["limit"]
                          sort  = group_by.value["sort"]
                        }
                      }

                    }
                  }

                  dynamic "process_query" {
                    for_each = fill.value.process_query
                    content {
                      filter_by = process_query.value["filter_by"]
                      limit     = process_query.value["limit"]
                      metric    = process_query.value["metric"]
                      search_by = process_query.value["search_by"]
                    }
                  }

                }
              }

              dynamic "size" {
                for_each = request.value.size
                content {
                  q = size.value["q"]

                  dynamic "apm_query" {
                    for_each = size.value.apm_query
                    content {
                      compute = apm_query.value["compute"]
                      index   = apm_query.value["index"]
                      search  = apm_query.value["search"]

                      dynamic "group_by" {
                        for_each = apm_query.value.group_by
                        content {
                          facet = group_by.value["facet"]
                          limit = group_by.value["limit"]
                          sort  = group_by.value["sort"]
                        }
                      }

                    }
                  }

                  dynamic "log_query" {
                    for_each = size.value.log_query
                    content {
                      compute = log_query.value["compute"]
                      index   = log_query.value["index"]
                      search  = log_query.value["search"]

                      dynamic "group_by" {
                        for_each = log_query.value.group_by
                        content {
                          facet = group_by.value["facet"]
                          limit = group_by.value["limit"]
                          sort  = group_by.value["sort"]
                        }
                      }

                    }
                  }

                  dynamic "process_query" {
                    for_each = size.value.process_query
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

          dynamic "style" {
            for_each = hostmap_definition.value.style
            content {
              fill_max     = style.value["fill_max"]
              fill_min     = style.value["fill_min"]
              palette      = style.value["palette"]
              palette_flip = style.value["palette_flip"]
            }
          }

        }
      }

      dynamic "iframe_definition" {
        for_each = widget.value.iframe_definition
        content {
          url = iframe_definition.value["url"]
        }
      }

      dynamic "image_definition" {
        for_each = widget.value.image_definition
        content {
          margin = image_definition.value["margin"]
          sizing = image_definition.value["sizing"]
          url    = image_definition.value["url"]
        }
      }

      dynamic "log_stream_definition" {
        for_each = widget.value.log_stream_definition
        content {
          columns     = log_stream_definition.value["columns"]
          logset      = log_stream_definition.value["logset"]
          query       = log_stream_definition.value["query"]
          time        = log_stream_definition.value["time"]
          title       = log_stream_definition.value["title"]
          title_align = log_stream_definition.value["title_align"]
          title_size  = log_stream_definition.value["title_size"]
        }
      }

      dynamic "manage_status_definition" {
        for_each = widget.value.manage_status_definition
        content {
          color_preference    = manage_status_definition.value["color_preference"]
          count               = manage_status_definition.value["count"]
          display_format      = manage_status_definition.value["display_format"]
          hide_zero_counts    = manage_status_definition.value["hide_zero_counts"]
          query               = manage_status_definition.value["query"]
          show_last_triggered = manage_status_definition.value["show_last_triggered"]
          sort                = manage_status_definition.value["sort"]
          start               = manage_status_definition.value["start"]
          summary_type        = manage_status_definition.value["summary_type"]
          title               = manage_status_definition.value["title"]
          title_align         = manage_status_definition.value["title_align"]
          title_size          = manage_status_definition.value["title_size"]
        }
      }

      dynamic "note_definition" {
        for_each = widget.value.note_definition
        content {
          background_color = note_definition.value["background_color"]
          content          = note_definition.value["content"]
          font_size        = note_definition.value["font_size"]
          show_tick        = note_definition.value["show_tick"]
          text_align       = note_definition.value["text_align"]
          tick_edge        = note_definition.value["tick_edge"]
          tick_pos         = note_definition.value["tick_pos"]
        }
      }

      dynamic "query_table_definition" {
        for_each = widget.value.query_table_definition
        content {
          time        = query_table_definition.value["time"]
          title       = query_table_definition.value["title"]
          title_align = query_table_definition.value["title_align"]
          title_size  = query_table_definition.value["title_size"]

          dynamic "request" {
            for_each = query_table_definition.value.request
            content {
              aggregator = request.value["aggregator"]
              alias      = request.value["alias"]
              limit      = request.value["limit"]
              order      = request.value["order"]
              q          = request.value["q"]

              dynamic "apm_query" {
                for_each = request.value.apm_query
                content {
                  compute = apm_query.value["compute"]
                  index   = apm_query.value["index"]
                  search  = apm_query.value["search"]

                  dynamic "group_by" {
                    for_each = apm_query.value.group_by
                    content {
                      facet = group_by.value["facet"]
                      limit = group_by.value["limit"]
                      sort  = group_by.value["sort"]
                    }
                  }

                }
              }

              dynamic "conditional_formats" {
                for_each = request.value.conditional_formats
                content {
                  comparator      = conditional_formats.value["comparator"]
                  custom_bg_color = conditional_formats.value["custom_bg_color"]
                  custom_fg_color = conditional_formats.value["custom_fg_color"]
                  hide_value      = conditional_formats.value["hide_value"]
                  image_url       = conditional_formats.value["image_url"]
                  palette         = conditional_formats.value["palette"]
                  timeframe       = conditional_formats.value["timeframe"]
                  value           = conditional_formats.value["value"]
                }
              }

              dynamic "log_query" {
                for_each = request.value.log_query
                content {
                  compute = log_query.value["compute"]
                  index   = log_query.value["index"]
                  search  = log_query.value["search"]

                  dynamic "group_by" {
                    for_each = log_query.value.group_by
                    content {
                      facet = group_by.value["facet"]
                      limit = group_by.value["limit"]
                      sort  = group_by.value["sort"]
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

      dynamic "query_value_definition" {
        for_each = widget.value.query_value_definition
        content {
          autoscale   = query_value_definition.value["autoscale"]
          custom_unit = query_value_definition.value["custom_unit"]
          precision   = query_value_definition.value["precision"]
          text_align  = query_value_definition.value["text_align"]
          time        = query_value_definition.value["time"]
          title       = query_value_definition.value["title"]
          title_align = query_value_definition.value["title_align"]
          title_size  = query_value_definition.value["title_size"]

          dynamic "request" {
            for_each = query_value_definition.value.request
            content {
              aggregator = request.value["aggregator"]
              q          = request.value["q"]

              dynamic "apm_query" {
                for_each = request.value.apm_query
                content {
                  compute = apm_query.value["compute"]
                  index   = apm_query.value["index"]
                  search  = apm_query.value["search"]

                  dynamic "group_by" {
                    for_each = apm_query.value.group_by
                    content {
                      facet = group_by.value["facet"]
                      limit = group_by.value["limit"]
                      sort  = group_by.value["sort"]
                    }
                  }

                }
              }

              dynamic "conditional_formats" {
                for_each = request.value.conditional_formats
                content {
                  comparator      = conditional_formats.value["comparator"]
                  custom_bg_color = conditional_formats.value["custom_bg_color"]
                  custom_fg_color = conditional_formats.value["custom_fg_color"]
                  hide_value      = conditional_formats.value["hide_value"]
                  image_url       = conditional_formats.value["image_url"]
                  palette         = conditional_formats.value["palette"]
                  timeframe       = conditional_formats.value["timeframe"]
                  value           = conditional_formats.value["value"]
                }
              }

              dynamic "log_query" {
                for_each = request.value.log_query
                content {
                  compute = log_query.value["compute"]
                  index   = log_query.value["index"]
                  search  = log_query.value["search"]

                  dynamic "group_by" {
                    for_each = log_query.value.group_by
                    content {
                      facet = group_by.value["facet"]
                      limit = group_by.value["limit"]
                      sort  = group_by.value["sort"]
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

      dynamic "scatterplot_definition" {
        for_each = widget.value.scatterplot_definition
        content {
          color_by_groups = scatterplot_definition.value["color_by_groups"]
          time            = scatterplot_definition.value["time"]
          title           = scatterplot_definition.value["title"]
          title_align     = scatterplot_definition.value["title_align"]
          title_size      = scatterplot_definition.value["title_size"]

          dynamic "request" {
            for_each = scatterplot_definition.value.request
            content {

              dynamic "x" {
                for_each = request.value.x
                content {
                  aggregator = x.value["aggregator"]
                  q          = x.value["q"]

                  dynamic "apm_query" {
                    for_each = x.value.apm_query
                    content {
                      compute = apm_query.value["compute"]
                      index   = apm_query.value["index"]
                      search  = apm_query.value["search"]

                      dynamic "group_by" {
                        for_each = apm_query.value.group_by
                        content {
                          facet = group_by.value["facet"]
                          limit = group_by.value["limit"]
                          sort  = group_by.value["sort"]
                        }
                      }

                    }
                  }

                  dynamic "log_query" {
                    for_each = x.value.log_query
                    content {
                      compute = log_query.value["compute"]
                      index   = log_query.value["index"]
                      search  = log_query.value["search"]

                      dynamic "group_by" {
                        for_each = log_query.value.group_by
                        content {
                          facet = group_by.value["facet"]
                          limit = group_by.value["limit"]
                          sort  = group_by.value["sort"]
                        }
                      }

                    }
                  }

                  dynamic "process_query" {
                    for_each = x.value.process_query
                    content {
                      filter_by = process_query.value["filter_by"]
                      limit     = process_query.value["limit"]
                      metric    = process_query.value["metric"]
                      search_by = process_query.value["search_by"]
                    }
                  }

                }
              }

              dynamic "y" {
                for_each = request.value.y
                content {
                  aggregator = y.value["aggregator"]
                  q          = y.value["q"]

                  dynamic "apm_query" {
                    for_each = y.value.apm_query
                    content {
                      compute = apm_query.value["compute"]
                      index   = apm_query.value["index"]
                      search  = apm_query.value["search"]

                      dynamic "group_by" {
                        for_each = apm_query.value.group_by
                        content {
                          facet = group_by.value["facet"]
                          limit = group_by.value["limit"]
                          sort  = group_by.value["sort"]
                        }
                      }

                    }
                  }

                  dynamic "log_query" {
                    for_each = y.value.log_query
                    content {
                      compute = log_query.value["compute"]
                      index   = log_query.value["index"]
                      search  = log_query.value["search"]

                      dynamic "group_by" {
                        for_each = log_query.value.group_by
                        content {
                          facet = group_by.value["facet"]
                          limit = group_by.value["limit"]
                          sort  = group_by.value["sort"]
                        }
                      }

                    }
                  }

                  dynamic "process_query" {
                    for_each = y.value.process_query
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

          dynamic "xaxis" {
            for_each = scatterplot_definition.value.xaxis
            content {
              include_zero = xaxis.value["include_zero"]
              label        = xaxis.value["label"]
              max          = xaxis.value["max"]
              min          = xaxis.value["min"]
              scale        = xaxis.value["scale"]
            }
          }

          dynamic "yaxis" {
            for_each = scatterplot_definition.value.yaxis
            content {
              include_zero = yaxis.value["include_zero"]
              label        = yaxis.value["label"]
              max          = yaxis.value["max"]
              min          = yaxis.value["min"]
              scale        = yaxis.value["scale"]
            }
          }

        }
      }

      dynamic "service_level_objective_definition" {
        for_each = widget.value.service_level_objective_definition
        content {
          show_error_budget = service_level_objective_definition.value["show_error_budget"]
          slo_id            = service_level_objective_definition.value["slo_id"]
          time_windows      = service_level_objective_definition.value["time_windows"]
          title             = service_level_objective_definition.value["title"]
          title_align       = service_level_objective_definition.value["title_align"]
          title_size        = service_level_objective_definition.value["title_size"]
          view_mode         = service_level_objective_definition.value["view_mode"]
          view_type         = service_level_objective_definition.value["view_type"]
        }
      }

      dynamic "timeseries_definition" {
        for_each = widget.value.timeseries_definition
        content {
          legend_size = timeseries_definition.value["legend_size"]
          show_legend = timeseries_definition.value["show_legend"]
          time        = timeseries_definition.value["time"]
          title       = timeseries_definition.value["title"]
          title_align = timeseries_definition.value["title_align"]
          title_size  = timeseries_definition.value["title_size"]

          dynamic "event" {
            for_each = timeseries_definition.value.event
            content {
              q = event.value["q"]
            }
          }

          dynamic "marker" {
            for_each = timeseries_definition.value.marker
            content {
              display_type = marker.value["display_type"]
              label        = marker.value["label"]
              value        = marker.value["value"]
            }
          }

          dynamic "request" {
            for_each = timeseries_definition.value.request
            content {
              display_type = request.value["display_type"]
              q            = request.value["q"]

              dynamic "apm_query" {
                for_each = request.value.apm_query
                content {
                  compute = apm_query.value["compute"]
                  index   = apm_query.value["index"]
                  search  = apm_query.value["search"]

                  dynamic "group_by" {
                    for_each = apm_query.value.group_by
                    content {
                      facet = group_by.value["facet"]
                      limit = group_by.value["limit"]
                      sort  = group_by.value["sort"]
                    }
                  }

                }
              }

              dynamic "log_query" {
                for_each = request.value.log_query
                content {
                  compute = log_query.value["compute"]
                  index   = log_query.value["index"]
                  search  = log_query.value["search"]

                  dynamic "group_by" {
                    for_each = log_query.value.group_by
                    content {
                      facet = group_by.value["facet"]
                      limit = group_by.value["limit"]
                      sort  = group_by.value["sort"]
                    }
                  }

                }
              }

              dynamic "metadata" {
                for_each = request.value.metadata
                content {
                  alias_name = metadata.value["alias_name"]
                  expression = metadata.value["expression"]
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

              dynamic "style" {
                for_each = request.value.style
                content {
                  line_type  = style.value["line_type"]
                  line_width = style.value["line_width"]
                  palette    = style.value["palette"]
                }
              }

            }
          }

          dynamic "yaxis" {
            for_each = timeseries_definition.value.yaxis
            content {
              include_zero = yaxis.value["include_zero"]
              label        = yaxis.value["label"]
              max          = yaxis.value["max"]
              min          = yaxis.value["min"]
              scale        = yaxis.value["scale"]
            }
          }

        }
      }

      dynamic "toplist_definition" {
        for_each = widget.value.toplist_definition
        content {
          time        = toplist_definition.value["time"]
          title       = toplist_definition.value["title"]
          title_align = toplist_definition.value["title_align"]
          title_size  = toplist_definition.value["title_size"]

          dynamic "request" {
            for_each = toplist_definition.value.request
            content {
              q = request.value["q"]

              dynamic "apm_query" {
                for_each = request.value.apm_query
                content {
                  compute = apm_query.value["compute"]
                  index   = apm_query.value["index"]
                  search  = apm_query.value["search"]

                  dynamic "group_by" {
                    for_each = apm_query.value.group_by
                    content {
                      facet = group_by.value["facet"]
                      limit = group_by.value["limit"]
                      sort  = group_by.value["sort"]
                    }
                  }

                }
              }

              dynamic "conditional_formats" {
                for_each = request.value.conditional_formats
                content {
                  comparator      = conditional_formats.value["comparator"]
                  custom_bg_color = conditional_formats.value["custom_bg_color"]
                  custom_fg_color = conditional_formats.value["custom_fg_color"]
                  hide_value      = conditional_formats.value["hide_value"]
                  image_url       = conditional_formats.value["image_url"]
                  palette         = conditional_formats.value["palette"]
                  timeframe       = conditional_formats.value["timeframe"]
                  value           = conditional_formats.value["value"]
                }
              }

              dynamic "log_query" {
                for_each = request.value.log_query
                content {
                  compute = log_query.value["compute"]
                  index   = log_query.value["index"]
                  search  = log_query.value["search"]

                  dynamic "group_by" {
                    for_each = log_query.value.group_by
                    content {
                      facet = group_by.value["facet"]
                      limit = group_by.value["limit"]
                      sort  = group_by.value["sort"]
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

              dynamic "style" {
                for_each = request.value.style
                content {
                  palette = style.value["palette"]
                }
              }

            }
          }

        }
      }

      dynamic "trace_service_definition" {
        for_each = widget.value.trace_service_definition
        content {
          display_format     = trace_service_definition.value["display_format"]
          env                = trace_service_definition.value["env"]
          service            = trace_service_definition.value["service"]
          show_breakdown     = trace_service_definition.value["show_breakdown"]
          show_distribution  = trace_service_definition.value["show_distribution"]
          show_errors        = trace_service_definition.value["show_errors"]
          show_hits          = trace_service_definition.value["show_hits"]
          show_latency       = trace_service_definition.value["show_latency"]
          show_resource_list = trace_service_definition.value["show_resource_list"]
          size_format        = trace_service_definition.value["size_format"]
          span_name          = trace_service_definition.value["span_name"]
          time               = trace_service_definition.value["time"]
          title              = trace_service_definition.value["title"]
          title_align        = trace_service_definition.value["title_align"]
          title_size         = trace_service_definition.value["title_size"]
        }
      }

    }
  }

}

