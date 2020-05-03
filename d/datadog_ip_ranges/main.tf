terraform {
  required_providers {
    datadog = ">= 2.7.0"
  }
}

data "datadog_ip_ranges" "this" {
}

