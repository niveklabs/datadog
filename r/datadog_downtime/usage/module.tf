module "datadog_downtime" {
  source = "./modules/datadog/r/datadog_downtime"

  active       = null
  disabled     = null
  end          = null
  end_date     = null
  message      = null
  monitor_id   = null
  monitor_tags = []
  scope        = []
  start        = null
  start_date   = null
  timezone     = null

  recurrence = [{
    period            = null
    type              = null
    until_date        = null
    until_occurrences = null
    week_days         = []
  }]
}
