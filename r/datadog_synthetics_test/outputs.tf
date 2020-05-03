output "id" {
  description = "returns a string"
  value       = datadog_synthetics_test.this.id
}

output "monitor_id" {
  description = "returns a number"
  value       = datadog_synthetics_test.this.monitor_id
}

output "this" {
  value = datadog_synthetics_test.this
}

