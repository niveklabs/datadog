terraform {
  required_providers {
    datadog = ">= 2.6.0"
  }
}

resource "datadog_metric_metadata" "this" {
  description     = var.description
  metric          = var.metric
  per_unit        = var.per_unit
  short_name      = var.short_name
  statsd_interval = var.statsd_interval
  type            = var.type
  unit            = var.unit
}

