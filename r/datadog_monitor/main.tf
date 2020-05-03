terraform {
  required_providers {
    datadog = ">= 2.7.0"
  }
}

resource "datadog_monitor" "this" {
  enable_logs_sample  = var.enable_logs_sample
  escalation_message  = var.escalation_message
  evaluation_delay    = var.evaluation_delay
  include_tags        = var.include_tags
  locked              = var.locked
  message             = var.message
  name                = var.name
  new_host_delay      = var.new_host_delay
  no_data_timeframe   = var.no_data_timeframe
  notify_audit        = var.notify_audit
  notify_no_data      = var.notify_no_data
  query               = var.query
  renotify_interval   = var.renotify_interval
  require_full_window = var.require_full_window
  silenced            = var.silenced
  tags                = var.tags
  threshold_windows   = var.threshold_windows
  thresholds          = var.thresholds
  timeout_h           = var.timeout_h
  type                = var.type
}

