module "datadog_dashboard" {
  source = "./modules/datadog/r/datadog_dashboard"

  description  = null
  is_read_only = null
  layout_type  = null
  notify_list  = []
  title        = null

  template_variable = [{
    default = null
    name    = null
    prefix  = null
  }]

  widget = [{
    alert_graph_definition = [{
      alert_id    = null
      time        = {}
      title       = null
      title_align = null
      title_size  = null
      viz_type    = null
    }]
    alert_value_definition = [{
      alert_id    = null
      precision   = null
      text_align  = null
      title       = null
      title_align = null
      title_size  = null
      unit        = null
    }]
    change_definition = [{
      request = [{
        apm_query = [{
          compute = {}
          group_by = [{
            facet = null
            limit = null
            sort  = {}
          }]
          index  = null
          search = {}
        }]
        change_type   = null
        compare_to    = null
        increase_good = null
        log_query = [{
          compute = {}
          group_by = [{
            facet = null
            limit = null
            sort  = {}
          }]
          index  = null
          search = {}
        }]
        order_by  = null
        order_dir = null
        process_query = [{
          filter_by = []
          limit     = null
          metric    = null
          search_by = null
        }]
        q            = null
        show_present = null
      }]
      time        = {}
      title       = null
      title_align = null
      title_size  = null
    }]
    check_status_definition = [{
      check       = null
      group       = null
      group_by    = []
      grouping    = null
      tags        = []
      time        = {}
      title       = null
      title_align = null
      title_size  = null
    }]
    distribution_definition = [{
      request = [{
        apm_query = [{
          compute = {}
          group_by = [{
            facet = null
            limit = null
            sort  = {}
          }]
          index  = null
          search = {}
        }]
        log_query = [{
          compute = {}
          group_by = [{
            facet = null
            limit = null
            sort  = {}
          }]
          index  = null
          search = {}
        }]
        process_query = [{
          filter_by = []
          limit     = null
          metric    = null
          search_by = null
        }]
        q = null
        style = [{
          palette = null
        }]
      }]
      time        = {}
      title       = null
      title_align = null
      title_size  = null
    }]
    event_stream_definition = [{
      event_size  = null
      query       = null
      time        = {}
      title       = null
      title_align = null
      title_size  = null
    }]
    event_timeline_definition = [{
      query       = null
      time        = {}
      title       = null
      title_align = null
      title_size  = null
    }]
    free_text_definition = [{
      color      = null
      font_size  = null
      text       = null
      text_align = null
    }]
    group_definition = [{
      layout_type = null
      title       = null
      widget = [{
        alert_graph_definition = [{
          alert_id    = null
          time        = {}
          title       = null
          title_align = null
          title_size  = null
          viz_type    = null
        }]
        alert_value_definition = [{
          alert_id    = null
          precision   = null
          text_align  = null
          title       = null
          title_align = null
          title_size  = null
          unit        = null
        }]
        change_definition = [{
          request = [{
            apm_query = [{
              compute = {}
              group_by = [{
                facet = null
                limit = null
                sort  = {}
              }]
              index  = null
              search = {}
            }]
            change_type   = null
            compare_to    = null
            increase_good = null
            log_query = [{
              compute = {}
              group_by = [{
                facet = null
                limit = null
                sort  = {}
              }]
              index  = null
              search = {}
            }]
            order_by  = null
            order_dir = null
            process_query = [{
              filter_by = []
              limit     = null
              metric    = null
              search_by = null
            }]
            q            = null
            show_present = null
          }]
          time        = {}
          title       = null
          title_align = null
          title_size  = null
        }]
        check_status_definition = [{
          check       = null
          group       = null
          group_by    = []
          grouping    = null
          tags        = []
          time        = {}
          title       = null
          title_align = null
          title_size  = null
        }]
        distribution_definition = [{
          request = [{
            apm_query = [{
              compute = {}
              group_by = [{
                facet = null
                limit = null
                sort  = {}
              }]
              index  = null
              search = {}
            }]
            log_query = [{
              compute = {}
              group_by = [{
                facet = null
                limit = null
                sort  = {}
              }]
              index  = null
              search = {}
            }]
            process_query = [{
              filter_by = []
              limit     = null
              metric    = null
              search_by = null
            }]
            q = null
            style = [{
              palette = null
            }]
          }]
          time        = {}
          title       = null
          title_align = null
          title_size  = null
        }]
        event_stream_definition = [{
          event_size  = null
          query       = null
          time        = {}
          title       = null
          title_align = null
          title_size  = null
        }]
        event_timeline_definition = [{
          query       = null
          time        = {}
          title       = null
          title_align = null
          title_size  = null
        }]
        free_text_definition = [{
          color      = null
          font_size  = null
          text       = null
          text_align = null
        }]
        heatmap_definition = [{
          request = [{
            apm_query = [{
              compute = {}
              group_by = [{
                facet = null
                limit = null
                sort  = {}
              }]
              index  = null
              search = {}
            }]
            log_query = [{
              compute = {}
              group_by = [{
                facet = null
                limit = null
                sort  = {}
              }]
              index  = null
              search = {}
            }]
            process_query = [{
              filter_by = []
              limit     = null
              metric    = null
              search_by = null
            }]
            q = null
            style = [{
              palette = null
            }]
          }]
          time        = {}
          title       = null
          title_align = null
          title_size  = null
          yaxis = [{
            include_zero = null
            label        = null
            max          = null
            min          = null
            scale        = null
          }]
        }]
        hostmap_definition = [{
          group           = []
          no_group_hosts  = null
          no_metric_hosts = null
          node_type       = null
          request = [{
            fill = [{
              apm_query = [{
                compute = {}
                group_by = [{
                  facet = null
                  limit = null
                  sort  = {}
                }]
                index  = null
                search = {}
              }]
              log_query = [{
                compute = {}
                group_by = [{
                  facet = null
                  limit = null
                  sort  = {}
                }]
                index  = null
                search = {}
              }]
              process_query = [{
                filter_by = []
                limit     = null
                metric    = null
                search_by = null
              }]
              q = null
            }]
            size = [{
              apm_query = [{
                compute = {}
                group_by = [{
                  facet = null
                  limit = null
                  sort  = {}
                }]
                index  = null
                search = {}
              }]
              log_query = [{
                compute = {}
                group_by = [{
                  facet = null
                  limit = null
                  sort  = {}
                }]
                index  = null
                search = {}
              }]
              process_query = [{
                filter_by = []
                limit     = null
                metric    = null
                search_by = null
              }]
              q = null
            }]
          }]
          scope = []
          style = [{
            fill_max     = null
            fill_min     = null
            palette      = null
            palette_flip = null
          }]
          title       = null
          title_align = null
          title_size  = null
        }]
        iframe_definition = [{
          url = null
        }]
        image_definition = [{
          margin = null
          sizing = null
          url    = null
        }]
        layout = {}
        log_stream_definition = [{
          columns     = []
          logset      = null
          query       = null
          time        = {}
          title       = null
          title_align = null
          title_size  = null
        }]
        manage_status_definition = [{
          color_preference = null
          count            = null
          display_format   = null
          hide_zero_counts = null
          query            = null
          sort             = null
          start            = null
          title            = null
          title_align      = null
          title_size       = null
        }]
        note_definition = [{
          background_color = null
          content          = null
          font_size        = null
          show_tick        = null
          text_align       = null
          tick_edge        = null
          tick_pos         = null
        }]
        query_value_definition = [{
          autoscale   = null
          custom_unit = null
          precision   = null
          request = [{
            aggregator = null
            apm_query = [{
              compute = {}
              group_by = [{
                facet = null
                limit = null
                sort  = {}
              }]
              index  = null
              search = {}
            }]
            conditional_formats = [{
              comparator      = null
              custom_bg_color = null
              custom_fg_color = null
              hide_value      = null
              image_url       = null
              palette         = null
              timeframe       = null
              value           = null
            }]
            log_query = [{
              compute = {}
              group_by = [{
                facet = null
                limit = null
                sort  = {}
              }]
              index  = null
              search = {}
            }]
            process_query = [{
              filter_by = []
              limit     = null
              metric    = null
              search_by = null
            }]
            q = null
          }]
          text_align  = null
          time        = {}
          title       = null
          title_align = null
          title_size  = null
        }]
        scatterplot_definition = [{
          color_by_groups = []
          request = [{
            x = [{
              aggregator = null
              apm_query = [{
                compute = {}
                group_by = [{
                  facet = null
                  limit = null
                  sort  = {}
                }]
                index  = null
                search = {}
              }]
              log_query = [{
                compute = {}
                group_by = [{
                  facet = null
                  limit = null
                  sort  = {}
                }]
                index  = null
                search = {}
              }]
              process_query = [{
                filter_by = []
                limit     = null
                metric    = null
                search_by = null
              }]
              q = null
            }]
            y = [{
              aggregator = null
              apm_query = [{
                compute = {}
                group_by = [{
                  facet = null
                  limit = null
                  sort  = {}
                }]
                index  = null
                search = {}
              }]
              log_query = [{
                compute = {}
                group_by = [{
                  facet = null
                  limit = null
                  sort  = {}
                }]
                index  = null
                search = {}
              }]
              process_query = [{
                filter_by = []
                limit     = null
                metric    = null
                search_by = null
              }]
              q = null
            }]
          }]
          time        = {}
          title       = null
          title_align = null
          title_size  = null
          xaxis = [{
            include_zero = null
            label        = null
            max          = null
            min          = null
            scale        = null
          }]
          yaxis = [{
            include_zero = null
            label        = null
            max          = null
            min          = null
            scale        = null
          }]
        }]
        service_level_objective_definition = [{
          show_error_budget = null
          slo_id            = null
          time_windows      = []
          title             = null
          title_align       = null
          title_size        = null
          view_mode         = null
          view_type         = null
        }]
        timeseries_definition = [{
          event = [{
            q = null
          }]
          legend_size = null
          marker = [{
            display_type = null
            label        = null
            value        = null
          }]
          request = [{
            apm_query = [{
              compute = {}
              group_by = [{
                facet = null
                limit = null
                sort  = {}
              }]
              index  = null
              search = {}
            }]
            display_type = null
            log_query = [{
              compute = {}
              group_by = [{
                facet = null
                limit = null
                sort  = {}
              }]
              index  = null
              search = {}
            }]
            metadata = [{
              alias_name = null
              expression = null
            }]
            process_query = [{
              filter_by = []
              limit     = null
              metric    = null
              search_by = null
            }]
            q = null
            style = [{
              line_type  = null
              line_width = null
              palette    = null
            }]
          }]
          show_legend = null
          time        = {}
          title       = null
          title_align = null
          title_size  = null
          yaxis = [{
            include_zero = null
            label        = null
            max          = null
            min          = null
            scale        = null
          }]
        }]
        toplist_definition = [{
          request = [{
            apm_query = [{
              compute = {}
              group_by = [{
                facet = null
                limit = null
                sort  = {}
              }]
              index  = null
              search = {}
            }]
            conditional_formats = [{
              comparator      = null
              custom_bg_color = null
              custom_fg_color = null
              hide_value      = null
              image_url       = null
              palette         = null
              timeframe       = null
              value           = null
            }]
            log_query = [{
              compute = {}
              group_by = [{
                facet = null
                limit = null
                sort  = {}
              }]
              index  = null
              search = {}
            }]
            process_query = [{
              filter_by = []
              limit     = null
              metric    = null
              search_by = null
            }]
            q = null
            style = [{
              palette = null
            }]
          }]
          time        = {}
          title       = null
          title_align = null
          title_size  = null
        }]
        trace_service_definition = [{
          display_format     = null
          env                = null
          service            = null
          show_breakdown     = null
          show_distribution  = null
          show_errors        = null
          show_hits          = null
          show_latency       = null
          show_resource_list = null
          size_format        = null
          span_name          = null
          time               = {}
          title              = null
          title_align        = null
          title_size         = null
        }]
      }]
    }]
    heatmap_definition = [{
      request = [{
        apm_query = [{
          compute = {}
          group_by = [{
            facet = null
            limit = null
            sort  = {}
          }]
          index  = null
          search = {}
        }]
        log_query = [{
          compute = {}
          group_by = [{
            facet = null
            limit = null
            sort  = {}
          }]
          index  = null
          search = {}
        }]
        process_query = [{
          filter_by = []
          limit     = null
          metric    = null
          search_by = null
        }]
        q = null
        style = [{
          palette = null
        }]
      }]
      time        = {}
      title       = null
      title_align = null
      title_size  = null
      yaxis = [{
        include_zero = null
        label        = null
        max          = null
        min          = null
        scale        = null
      }]
    }]
    hostmap_definition = [{
      group           = []
      no_group_hosts  = null
      no_metric_hosts = null
      node_type       = null
      request = [{
        fill = [{
          apm_query = [{
            compute = {}
            group_by = [{
              facet = null
              limit = null
              sort  = {}
            }]
            index  = null
            search = {}
          }]
          log_query = [{
            compute = {}
            group_by = [{
              facet = null
              limit = null
              sort  = {}
            }]
            index  = null
            search = {}
          }]
          process_query = [{
            filter_by = []
            limit     = null
            metric    = null
            search_by = null
          }]
          q = null
        }]
        size = [{
          apm_query = [{
            compute = {}
            group_by = [{
              facet = null
              limit = null
              sort  = {}
            }]
            index  = null
            search = {}
          }]
          log_query = [{
            compute = {}
            group_by = [{
              facet = null
              limit = null
              sort  = {}
            }]
            index  = null
            search = {}
          }]
          process_query = [{
            filter_by = []
            limit     = null
            metric    = null
            search_by = null
          }]
          q = null
        }]
      }]
      scope = []
      style = [{
        fill_max     = null
        fill_min     = null
        palette      = null
        palette_flip = null
      }]
      title       = null
      title_align = null
      title_size  = null
    }]
    iframe_definition = [{
      url = null
    }]
    image_definition = [{
      margin = null
      sizing = null
      url    = null
    }]
    layout = {}
    log_stream_definition = [{
      columns     = []
      logset      = null
      query       = null
      time        = {}
      title       = null
      title_align = null
      title_size  = null
    }]
    manage_status_definition = [{
      color_preference = null
      count            = null
      display_format   = null
      hide_zero_counts = null
      query            = null
      sort             = null
      start            = null
      title            = null
      title_align      = null
      title_size       = null
    }]
    note_definition = [{
      background_color = null
      content          = null
      font_size        = null
      show_tick        = null
      text_align       = null
      tick_edge        = null
      tick_pos         = null
    }]
    query_value_definition = [{
      autoscale   = null
      custom_unit = null
      precision   = null
      request = [{
        aggregator = null
        apm_query = [{
          compute = {}
          group_by = [{
            facet = null
            limit = null
            sort  = {}
          }]
          index  = null
          search = {}
        }]
        conditional_formats = [{
          comparator      = null
          custom_bg_color = null
          custom_fg_color = null
          hide_value      = null
          image_url       = null
          palette         = null
          timeframe       = null
          value           = null
        }]
        log_query = [{
          compute = {}
          group_by = [{
            facet = null
            limit = null
            sort  = {}
          }]
          index  = null
          search = {}
        }]
        process_query = [{
          filter_by = []
          limit     = null
          metric    = null
          search_by = null
        }]
        q = null
      }]
      text_align  = null
      time        = {}
      title       = null
      title_align = null
      title_size  = null
    }]
    scatterplot_definition = [{
      color_by_groups = []
      request = [{
        x = [{
          aggregator = null
          apm_query = [{
            compute = {}
            group_by = [{
              facet = null
              limit = null
              sort  = {}
            }]
            index  = null
            search = {}
          }]
          log_query = [{
            compute = {}
            group_by = [{
              facet = null
              limit = null
              sort  = {}
            }]
            index  = null
            search = {}
          }]
          process_query = [{
            filter_by = []
            limit     = null
            metric    = null
            search_by = null
          }]
          q = null
        }]
        y = [{
          aggregator = null
          apm_query = [{
            compute = {}
            group_by = [{
              facet = null
              limit = null
              sort  = {}
            }]
            index  = null
            search = {}
          }]
          log_query = [{
            compute = {}
            group_by = [{
              facet = null
              limit = null
              sort  = {}
            }]
            index  = null
            search = {}
          }]
          process_query = [{
            filter_by = []
            limit     = null
            metric    = null
            search_by = null
          }]
          q = null
        }]
      }]
      time        = {}
      title       = null
      title_align = null
      title_size  = null
      xaxis = [{
        include_zero = null
        label        = null
        max          = null
        min          = null
        scale        = null
      }]
      yaxis = [{
        include_zero = null
        label        = null
        max          = null
        min          = null
        scale        = null
      }]
    }]
    service_level_objective_definition = [{
      show_error_budget = null
      slo_id            = null
      time_windows      = []
      title             = null
      title_align       = null
      title_size        = null
      view_mode         = null
      view_type         = null
    }]
    timeseries_definition = [{
      event = [{
        q = null
      }]
      legend_size = null
      marker = [{
        display_type = null
        label        = null
        value        = null
      }]
      request = [{
        apm_query = [{
          compute = {}
          group_by = [{
            facet = null
            limit = null
            sort  = {}
          }]
          index  = null
          search = {}
        }]
        display_type = null
        log_query = [{
          compute = {}
          group_by = [{
            facet = null
            limit = null
            sort  = {}
          }]
          index  = null
          search = {}
        }]
        metadata = [{
          alias_name = null
          expression = null
        }]
        process_query = [{
          filter_by = []
          limit     = null
          metric    = null
          search_by = null
        }]
        q = null
        style = [{
          line_type  = null
          line_width = null
          palette    = null
        }]
      }]
      show_legend = null
      time        = {}
      title       = null
      title_align = null
      title_size  = null
      yaxis = [{
        include_zero = null
        label        = null
        max          = null
        min          = null
        scale        = null
      }]
    }]
    toplist_definition = [{
      request = [{
        apm_query = [{
          compute = {}
          group_by = [{
            facet = null
            limit = null
            sort  = {}
          }]
          index  = null
          search = {}
        }]
        conditional_formats = [{
          comparator      = null
          custom_bg_color = null
          custom_fg_color = null
          hide_value      = null
          image_url       = null
          palette         = null
          timeframe       = null
          value           = null
        }]
        log_query = [{
          compute = {}
          group_by = [{
            facet = null
            limit = null
            sort  = {}
          }]
          index  = null
          search = {}
        }]
        process_query = [{
          filter_by = []
          limit     = null
          metric    = null
          search_by = null
        }]
        q = null
        style = [{
          palette = null
        }]
      }]
      time        = {}
      title       = null
      title_align = null
      title_size  = null
    }]
    trace_service_definition = [{
      display_format     = null
      env                = null
      service            = null
      show_breakdown     = null
      show_distribution  = null
      show_errors        = null
      show_hits          = null
      show_latency       = null
      show_resource_list = null
      size_format        = null
      span_name          = null
      time               = {}
      title              = null
      title_align        = null
      title_size         = null
    }]
  }]
}
