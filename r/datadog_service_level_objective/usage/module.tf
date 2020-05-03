module "datadog_service_level_objective" {
  source = "./modules/datadog/r/datadog_service_level_objective"

  description    = null
  groups         = []
  monitor_ids    = []
  monitor_search = null
  name           = null
  tags           = []
  type           = null

  query = [{
    denominator = null
    numerator   = null
  }]

  thresholds = [{
    target          = null
    target_display  = null
    timeframe       = null
    warning         = null
    warning_display = null
  }]
}
