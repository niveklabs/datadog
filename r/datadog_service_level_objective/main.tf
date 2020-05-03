terraform {
  required_providers {
    datadog = ">= 2.7.0"
  }
}

resource "datadog_service_level_objective" "this" {
  description    = var.description
  groups         = var.groups
  monitor_ids    = var.monitor_ids
  monitor_search = var.monitor_search
  name           = var.name
  tags           = var.tags
  type           = var.type

  dynamic "query" {
    for_each = var.query
    content {
      denominator = query.value["denominator"]
      numerator   = query.value["numerator"]
    }
  }

  dynamic "thresholds" {
    for_each = var.thresholds
    content {
      target          = thresholds.value["target"]
      target_display  = thresholds.value["target_display"]
      timeframe       = thresholds.value["timeframe"]
      warning         = thresholds.value["warning"]
      warning_display = thresholds.value["warning_display"]
    }
  }

}

