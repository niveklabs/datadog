terraform {
  required_providers {
    datadog = ">= 2.6.0"
  }
}

resource "datadog_integration_gcp" "this" {
  client_email   = var.client_email
  client_id      = var.client_id
  host_filters   = var.host_filters
  private_key    = var.private_key
  private_key_id = var.private_key_id
  project_id     = var.project_id
}

