module "datadog_logs_custom_pipeline" {
  source = "./modules/datadog/r/datadog_logs_custom_pipeline"

  is_enabled = null
  name       = null

  filter = [{
    query = null
  }]

  processor = [{
    arithmetic_processor = [{
      expression         = null
      is_enabled         = null
      is_replace_missing = null
      name               = null
      target             = null
    }]
    attribute_remapper = [{
      is_enabled           = null
      name                 = null
      override_on_conflict = null
      preserve_source      = null
      source_type          = null
      sources              = []
      target               = null
      target_type          = null
    }]
    category_processor = [{
      category = [{
        filter = [{
          query = null
        }]
        name = null
      }]
      is_enabled = null
      name       = null
      target     = null
    }]
    date_remapper = [{
      is_enabled = null
      name       = null
      sources    = []
    }]
    grok_parser = [{
      grok = [{
        match_rules   = null
        support_rules = null
      }]
      is_enabled = null
      name       = null
      source     = null
    }]
    message_remapper = [{
      is_enabled = null
      name       = null
      sources    = []
    }]
    pipeline = [{
      filter = [{
        query = null
      }]
      is_enabled = null
      name       = null
      processor = [{
        arithmetic_processor = [{
          expression         = null
          is_enabled         = null
          is_replace_missing = null
          name               = null
          target             = null
        }]
        attribute_remapper = [{
          is_enabled           = null
          name                 = null
          override_on_conflict = null
          preserve_source      = null
          source_type          = null
          sources              = []
          target               = null
          target_type          = null
        }]
        category_processor = [{
          category = [{
            filter = [{
              query = null
            }]
            name = null
          }]
          is_enabled = null
          name       = null
          target     = null
        }]
        date_remapper = [{
          is_enabled = null
          name       = null
          sources    = []
        }]
        grok_parser = [{
          grok = [{
            match_rules   = null
            support_rules = null
          }]
          is_enabled = null
          name       = null
          source     = null
        }]
        message_remapper = [{
          is_enabled = null
          name       = null
          sources    = []
        }]
        service_remapper = [{
          is_enabled = null
          name       = null
          sources    = []
        }]
        status_remapper = [{
          is_enabled = null
          name       = null
          sources    = []
        }]
        trace_id_remapper = [{
          is_enabled = null
          name       = null
          sources    = []
        }]
        url_parser = [{
          is_enabled               = null
          name                     = null
          normalize_ending_slashes = null
          sources                  = []
          target                   = null
        }]
        user_agent_parser = [{
          is_enabled = null
          is_encoded = null
          name       = null
          sources    = []
          target     = null
        }]
      }]
    }]
    service_remapper = [{
      is_enabled = null
      name       = null
      sources    = []
    }]
    status_remapper = [{
      is_enabled = null
      name       = null
      sources    = []
    }]
    trace_id_remapper = [{
      is_enabled = null
      name       = null
      sources    = []
    }]
    url_parser = [{
      is_enabled               = null
      name                     = null
      normalize_ending_slashes = null
      sources                  = []
      target                   = null
    }]
    user_agent_parser = [{
      is_enabled = null
      is_encoded = null
      name       = null
      sources    = []
      target     = null
    }]
  }]
}
