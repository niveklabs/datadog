terraform {
  required_providers {
    datadog = ">= 2.6.0"
  }
}

data "datadog_ip_ranges" "this" {
}

