output "evaluation_delay" {
  description = "returns a number"
  value       = datadog_monitor.this.evaluation_delay
}

output "id" {
  description = "returns a string"
  value       = datadog_monitor.this.id
}

output "this" {
  value = datadog_monitor.this
}

