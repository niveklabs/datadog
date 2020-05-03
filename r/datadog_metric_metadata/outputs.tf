output "id" {
  description = "returns a string"
  value       = datadog_metric_metadata.this.id
}

output "this" {
  value = datadog_metric_metadata.this
}

