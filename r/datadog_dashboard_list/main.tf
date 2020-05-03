terraform {
  required_providers {
    datadog = ">= 2.7.0"
  }
}

resource "datadog_dashboard_list" "this" {
  name = var.name

  dynamic "dash_item" {
    for_each = var.dash_item
    content {
      dash_id = dash_item.value["dash_id"]
      type    = dash_item.value["type"]
    }
  }

}

