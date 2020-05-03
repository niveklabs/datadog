module "datadog_monitor" {
  source = "./modules/datadog/r/datadog_monitor"

  enable_logs_sample  = null
  escalation_message  = null
  evaluation_delay    = null
  include_tags        = null
  locked              = null
  message             = null
  name                = null
  new_host_delay      = null
  no_data_timeframe   = null
  notify_audit        = null
  notify_no_data      = null
  query               = null
  renotify_interval   = null
  require_full_window = null
  silenced            = {}
  tags                = []
  threshold_windows   = {}
  thresholds          = {}
  timeout_h           = null
  type                = null
}
