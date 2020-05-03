terraform {
  required_providers {
    datadog = ">= 2.7.0"
  }
}

resource "datadog_logs_integration_pipeline" "this" {
  is_enabled = var.is_enabled
}

