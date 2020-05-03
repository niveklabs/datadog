terraform {
  required_providers {
    datadog = ">= 2.7.0"
  }
}

resource "datadog_logs_pipeline_order" "this" {
  name      = var.name
  pipelines = var.pipelines
}

