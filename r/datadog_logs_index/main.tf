terraform {
  required_providers {
    datadog = ">= 2.7.0"
  }
}

resource "datadog_logs_index" "this" {
  name = var.name

  dynamic "exclusion_filter" {
    for_each = var.exclusion_filter
    content {
      is_enabled = exclusion_filter.value["is_enabled"]
      name       = exclusion_filter.value["name"]

      dynamic "filter" {
        for_each = exclusion_filter.value.filter
        content {
          query       = filter.value["query"]
          sample_rate = filter.value["sample_rate"]
        }
      }

    }
  }

  dynamic "filter" {
    for_each = var.filter
    content {
      query = filter.value["query"]
    }
  }

}

