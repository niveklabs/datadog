terraform {
  required_providers {
    datadog = ">= 2.6.0"
  }
}

resource "datadog_synthetics_test" "this" {
  assertions      = var.assertions
  device_ids      = var.device_ids
  locations       = var.locations
  message         = var.message
  name            = var.name
  options         = var.options
  request         = var.request
  request_headers = var.request_headers
  status          = var.status
  subtype         = var.subtype
  tags            = var.tags
  type            = var.type
}

