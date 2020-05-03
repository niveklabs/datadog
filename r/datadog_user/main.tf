terraform {
  required_providers {
    datadog = ">= 2.5.0"
  }
}

resource "datadog_user" "this" {
  access_role = var.access_role
  disabled    = var.disabled
  email       = var.email
  handle      = var.handle
  is_admin    = var.is_admin
  name        = var.name
  role        = var.role
}

