terraform {
  required_providers {
    datadog = ">= 2.7.0"
  }
}

resource "datadog_integration_pagerduty" "this" {
  api_token           = var.api_token
  individual_services = var.individual_services
  schedules           = var.schedules
  subdomain           = var.subdomain

  dynamic "services" {
    for_each = var.services
    content {
      service_key  = services.value["service_key"]
      service_name = services.value["service_name"]
    }
  }

}

