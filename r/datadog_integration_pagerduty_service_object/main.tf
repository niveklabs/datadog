terraform {
  required_providers {
    datadog = ">= 2.5.0"
  }
}

resource "datadog_integration_pagerduty_service_object" "this" {
  service_key  = var.service_key
  service_name = var.service_name
}

