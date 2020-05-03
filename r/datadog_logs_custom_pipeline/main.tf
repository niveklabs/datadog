terraform {
  required_providers {
    datadog = ">= 2.6.0"
  }
}

resource "datadog_logs_custom_pipeline" "this" {
  is_enabled = var.is_enabled
  name       = var.name

  dynamic "filter" {
    for_each = var.filter
    content {
      query = filter.value["query"]
    }
  }

  dynamic "processor" {
    for_each = var.processor
    content {

      dynamic "arithmetic_processor" {
        for_each = processor.value.arithmetic_processor
        content {
          expression         = arithmetic_processor.value["expression"]
          is_enabled         = arithmetic_processor.value["is_enabled"]
          is_replace_missing = arithmetic_processor.value["is_replace_missing"]
          name               = arithmetic_processor.value["name"]
          target             = arithmetic_processor.value["target"]
        }
      }

      dynamic "attribute_remapper" {
        for_each = processor.value.attribute_remapper
        content {
          is_enabled           = attribute_remapper.value["is_enabled"]
          name                 = attribute_remapper.value["name"]
          override_on_conflict = attribute_remapper.value["override_on_conflict"]
          preserve_source      = attribute_remapper.value["preserve_source"]
          source_type          = attribute_remapper.value["source_type"]
          sources              = attribute_remapper.value["sources"]
          target               = attribute_remapper.value["target"]
          target_type          = attribute_remapper.value["target_type"]
        }
      }

      dynamic "category_processor" {
        for_each = processor.value.category_processor
        content {
          is_enabled = category_processor.value["is_enabled"]
          name       = category_processor.value["name"]
          target     = category_processor.value["target"]

          dynamic "category" {
            for_each = category_processor.value.category
            content {
              name = category.value["name"]

              dynamic "filter" {
                for_each = category.value.filter
                content {
                  query = filter.value["query"]
                }
              }

            }
          }

        }
      }

      dynamic "date_remapper" {
        for_each = processor.value.date_remapper
        content {
          is_enabled = date_remapper.value["is_enabled"]
          name       = date_remapper.value["name"]
          sources    = date_remapper.value["sources"]
        }
      }

      dynamic "geo_ip_parser" {
        for_each = processor.value.geo_ip_parser
        content {
          is_enabled = geo_ip_parser.value["is_enabled"]
          name       = geo_ip_parser.value["name"]
          sources    = geo_ip_parser.value["sources"]
          target     = geo_ip_parser.value["target"]
        }
      }

      dynamic "grok_parser" {
        for_each = processor.value.grok_parser
        content {
          is_enabled = grok_parser.value["is_enabled"]
          name       = grok_parser.value["name"]
          samples    = grok_parser.value["samples"]
          source     = grok_parser.value["source"]

          dynamic "grok" {
            for_each = grok_parser.value.grok
            content {
              match_rules   = grok.value["match_rules"]
              support_rules = grok.value["support_rules"]
            }
          }

        }
      }

      dynamic "message_remapper" {
        for_each = processor.value.message_remapper
        content {
          is_enabled = message_remapper.value["is_enabled"]
          name       = message_remapper.value["name"]
          sources    = message_remapper.value["sources"]
        }
      }

      dynamic "pipeline" {
        for_each = processor.value.pipeline
        content {
          is_enabled = pipeline.value["is_enabled"]
          name       = pipeline.value["name"]

          dynamic "filter" {
            for_each = pipeline.value.filter
            content {
              query = filter.value["query"]
            }
          }

          dynamic "processor" {
            for_each = pipeline.value.processor
            content {

              dynamic "arithmetic_processor" {
                for_each = processor.value.arithmetic_processor
                content {
                  expression         = arithmetic_processor.value["expression"]
                  is_enabled         = arithmetic_processor.value["is_enabled"]
                  is_replace_missing = arithmetic_processor.value["is_replace_missing"]
                  name               = arithmetic_processor.value["name"]
                  target             = arithmetic_processor.value["target"]
                }
              }

              dynamic "attribute_remapper" {
                for_each = processor.value.attribute_remapper
                content {
                  is_enabled           = attribute_remapper.value["is_enabled"]
                  name                 = attribute_remapper.value["name"]
                  override_on_conflict = attribute_remapper.value["override_on_conflict"]
                  preserve_source      = attribute_remapper.value["preserve_source"]
                  source_type          = attribute_remapper.value["source_type"]
                  sources              = attribute_remapper.value["sources"]
                  target               = attribute_remapper.value["target"]
                  target_type          = attribute_remapper.value["target_type"]
                }
              }

              dynamic "category_processor" {
                for_each = processor.value.category_processor
                content {
                  is_enabled = category_processor.value["is_enabled"]
                  name       = category_processor.value["name"]
                  target     = category_processor.value["target"]

                  dynamic "category" {
                    for_each = category_processor.value.category
                    content {
                      name = category.value["name"]

                      dynamic "filter" {
                        for_each = category.value.filter
                        content {
                          query = filter.value["query"]
                        }
                      }

                    }
                  }

                }
              }

              dynamic "date_remapper" {
                for_each = processor.value.date_remapper
                content {
                  is_enabled = date_remapper.value["is_enabled"]
                  name       = date_remapper.value["name"]
                  sources    = date_remapper.value["sources"]
                }
              }

              dynamic "geo_ip_parser" {
                for_each = processor.value.geo_ip_parser
                content {
                  is_enabled = geo_ip_parser.value["is_enabled"]
                  name       = geo_ip_parser.value["name"]
                  sources    = geo_ip_parser.value["sources"]
                  target     = geo_ip_parser.value["target"]
                }
              }

              dynamic "grok_parser" {
                for_each = processor.value.grok_parser
                content {
                  is_enabled = grok_parser.value["is_enabled"]
                  name       = grok_parser.value["name"]
                  samples    = grok_parser.value["samples"]
                  source     = grok_parser.value["source"]

                  dynamic "grok" {
                    for_each = grok_parser.value.grok
                    content {
                      match_rules   = grok.value["match_rules"]
                      support_rules = grok.value["support_rules"]
                    }
                  }

                }
              }

              dynamic "message_remapper" {
                for_each = processor.value.message_remapper
                content {
                  is_enabled = message_remapper.value["is_enabled"]
                  name       = message_remapper.value["name"]
                  sources    = message_remapper.value["sources"]
                }
              }

              dynamic "service_remapper" {
                for_each = processor.value.service_remapper
                content {
                  is_enabled = service_remapper.value["is_enabled"]
                  name       = service_remapper.value["name"]
                  sources    = service_remapper.value["sources"]
                }
              }

              dynamic "status_remapper" {
                for_each = processor.value.status_remapper
                content {
                  is_enabled = status_remapper.value["is_enabled"]
                  name       = status_remapper.value["name"]
                  sources    = status_remapper.value["sources"]
                }
              }

              dynamic "string_builder_processor" {
                for_each = processor.value.string_builder_processor
                content {
                  is_enabled         = string_builder_processor.value["is_enabled"]
                  is_replace_missing = string_builder_processor.value["is_replace_missing"]
                  name               = string_builder_processor.value["name"]
                  target             = string_builder_processor.value["target"]
                  template           = string_builder_processor.value["template"]
                }
              }

              dynamic "trace_id_remapper" {
                for_each = processor.value.trace_id_remapper
                content {
                  is_enabled = trace_id_remapper.value["is_enabled"]
                  name       = trace_id_remapper.value["name"]
                  sources    = trace_id_remapper.value["sources"]
                }
              }

              dynamic "url_parser" {
                for_each = processor.value.url_parser
                content {
                  is_enabled               = url_parser.value["is_enabled"]
                  name                     = url_parser.value["name"]
                  normalize_ending_slashes = url_parser.value["normalize_ending_slashes"]
                  sources                  = url_parser.value["sources"]
                  target                   = url_parser.value["target"]
                }
              }

              dynamic "user_agent_parser" {
                for_each = processor.value.user_agent_parser
                content {
                  is_enabled = user_agent_parser.value["is_enabled"]
                  is_encoded = user_agent_parser.value["is_encoded"]
                  name       = user_agent_parser.value["name"]
                  sources    = user_agent_parser.value["sources"]
                  target     = user_agent_parser.value["target"]
                }
              }

            }
          }

        }
      }

      dynamic "service_remapper" {
        for_each = processor.value.service_remapper
        content {
          is_enabled = service_remapper.value["is_enabled"]
          name       = service_remapper.value["name"]
          sources    = service_remapper.value["sources"]
        }
      }

      dynamic "status_remapper" {
        for_each = processor.value.status_remapper
        content {
          is_enabled = status_remapper.value["is_enabled"]
          name       = status_remapper.value["name"]
          sources    = status_remapper.value["sources"]
        }
      }

      dynamic "string_builder_processor" {
        for_each = processor.value.string_builder_processor
        content {
          is_enabled         = string_builder_processor.value["is_enabled"]
          is_replace_missing = string_builder_processor.value["is_replace_missing"]
          name               = string_builder_processor.value["name"]
          target             = string_builder_processor.value["target"]
          template           = string_builder_processor.value["template"]
        }
      }

      dynamic "trace_id_remapper" {
        for_each = processor.value.trace_id_remapper
        content {
          is_enabled = trace_id_remapper.value["is_enabled"]
          name       = trace_id_remapper.value["name"]
          sources    = trace_id_remapper.value["sources"]
        }
      }

      dynamic "url_parser" {
        for_each = processor.value.url_parser
        content {
          is_enabled               = url_parser.value["is_enabled"]
          name                     = url_parser.value["name"]
          normalize_ending_slashes = url_parser.value["normalize_ending_slashes"]
          sources                  = url_parser.value["sources"]
          target                   = url_parser.value["target"]
        }
      }

      dynamic "user_agent_parser" {
        for_each = processor.value.user_agent_parser
        content {
          is_enabled = user_agent_parser.value["is_enabled"]
          is_encoded = user_agent_parser.value["is_encoded"]
          name       = user_agent_parser.value["name"]
          sources    = user_agent_parser.value["sources"]
          target     = user_agent_parser.value["target"]
        }
      }

    }
  }

}

