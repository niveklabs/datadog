terraform {
  required_providers {
    datadog = ">= 2.7.0"
  }
}

resource "datadog_logs_index_order" "this" {
  indexes = var.indexes
  name    = var.name
}

