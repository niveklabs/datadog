terraform {
  required_providers {
    datadog = ">= 2.5.0"
  }
}

data "datadog_ip_ranges" "this" {
}

