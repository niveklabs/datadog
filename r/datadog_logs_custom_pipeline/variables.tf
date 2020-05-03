variable "is_enabled" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "filter" {
  description = "nested mode: NestingList, min items: 1, max items: 0"
  type = set(object(
    {
      query = string
    }
  ))
}

variable "processor" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      arithmetic_processor = list(object(
        {
          expression         = string
          is_enabled         = bool
          is_replace_missing = bool
          name               = string
          target             = string
        }
      ))
      attribute_remapper = list(object(
        {
          is_enabled           = bool
          name                 = string
          override_on_conflict = bool
          preserve_source      = bool
          source_type          = string
          sources              = list(string)
          target               = string
          target_type          = string
        }
      ))
      category_processor = list(object(
        {
          category = list(object(
            {
              filter = list(object(
                {
                  query = string
                }
              ))
              name = string
            }
          ))
          is_enabled = bool
          name       = string
          target     = string
        }
      ))
      date_remapper = list(object(
        {
          is_enabled = bool
          name       = string
          sources    = list(string)
        }
      ))
      geo_ip_parser = list(object(
        {
          is_enabled = bool
          name       = string
          sources    = list(string)
          target     = string
        }
      ))
      grok_parser = list(object(
        {
          grok = list(object(
            {
              match_rules   = string
              support_rules = string
            }
          ))
          is_enabled = bool
          name       = string
          samples    = list(string)
          source     = string
        }
      ))
      message_remapper = list(object(
        {
          is_enabled = bool
          name       = string
          sources    = list(string)
        }
      ))
      pipeline = list(object(
        {
          filter = list(object(
            {
              query = string
            }
          ))
          is_enabled = bool
          name       = string
          processor = list(object(
            {
              arithmetic_processor = list(object(
                {
                  expression         = string
                  is_enabled         = bool
                  is_replace_missing = bool
                  name               = string
                  target             = string
                }
              ))
              attribute_remapper = list(object(
                {
                  is_enabled           = bool
                  name                 = string
                  override_on_conflict = bool
                  preserve_source      = bool
                  source_type          = string
                  sources              = list(string)
                  target               = string
                  target_type          = string
                }
              ))
              category_processor = list(object(
                {
                  category = list(object(
                    {
                      filter = list(object(
                        {
                          query = string
                        }
                      ))
                      name = string
                    }
                  ))
                  is_enabled = bool
                  name       = string
                  target     = string
                }
              ))
              date_remapper = list(object(
                {
                  is_enabled = bool
                  name       = string
                  sources    = list(string)
                }
              ))
              geo_ip_parser = list(object(
                {
                  is_enabled = bool
                  name       = string
                  sources    = list(string)
                  target     = string
                }
              ))
              grok_parser = list(object(
                {
                  grok = list(object(
                    {
                      match_rules   = string
                      support_rules = string
                    }
                  ))
                  is_enabled = bool
                  name       = string
                  samples    = list(string)
                  source     = string
                }
              ))
              message_remapper = list(object(
                {
                  is_enabled = bool
                  name       = string
                  sources    = list(string)
                }
              ))
              service_remapper = list(object(
                {
                  is_enabled = bool
                  name       = string
                  sources    = list(string)
                }
              ))
              status_remapper = list(object(
                {
                  is_enabled = bool
                  name       = string
                  sources    = list(string)
                }
              ))
              string_builder_processor = list(object(
                {
                  is_enabled         = bool
                  is_replace_missing = bool
                  name               = string
                  target             = string
                  template           = string
                }
              ))
              trace_id_remapper = list(object(
                {
                  is_enabled = bool
                  name       = string
                  sources    = list(string)
                }
              ))
              url_parser = list(object(
                {
                  is_enabled               = bool
                  name                     = string
                  normalize_ending_slashes = bool
                  sources                  = list(string)
                  target                   = string
                }
              ))
              user_agent_parser = list(object(
                {
                  is_enabled = bool
                  is_encoded = bool
                  name       = string
                  sources    = list(string)
                  target     = string
                }
              ))
            }
          ))
        }
      ))
      service_remapper = list(object(
        {
          is_enabled = bool
          name       = string
          sources    = list(string)
        }
      ))
      status_remapper = list(object(
        {
          is_enabled = bool
          name       = string
          sources    = list(string)
        }
      ))
      string_builder_processor = list(object(
        {
          is_enabled         = bool
          is_replace_missing = bool
          name               = string
          target             = string
          template           = string
        }
      ))
      trace_id_remapper = list(object(
        {
          is_enabled = bool
          name       = string
          sources    = list(string)
        }
      ))
      url_parser = list(object(
        {
          is_enabled               = bool
          name                     = string
          normalize_ending_slashes = bool
          sources                  = list(string)
          target                   = string
        }
      ))
      user_agent_parser = list(object(
        {
          is_enabled = bool
          is_encoded = bool
          name       = string
          sources    = list(string)
          target     = string
        }
      ))
    }
  ))
  default = []
}

