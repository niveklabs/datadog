terraform {
  required_providers {
    datadog = ">= 2.6.0"
  }
}

resource "datadog_integration_aws" "this" {
  account_id                       = var.account_id
  account_specific_namespace_rules = var.account_specific_namespace_rules
  filter_tags                      = var.filter_tags
  host_tags                        = var.host_tags
  role_name                        = var.role_name
}

