terraform {
  required_providers {
    datadog = ">= 2.6.0"
  }
}

resource "datadog_downtime" "this" {
  active       = var.active
  disabled     = var.disabled
  end          = var.end
  end_date     = var.end_date
  message      = var.message
  monitor_id   = var.monitor_id
  monitor_tags = var.monitor_tags
  scope        = var.scope
  start        = var.start
  start_date   = var.start_date
  timezone     = var.timezone

  dynamic "recurrence" {
    for_each = var.recurrence
    content {
      period            = recurrence.value["period"]
      type              = recurrence.value["type"]
      until_date        = recurrence.value["until_date"]
      until_occurrences = recurrence.value["until_occurrences"]
      week_days         = recurrence.value["week_days"]
    }
  }

}

