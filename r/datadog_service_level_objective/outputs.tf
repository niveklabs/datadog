output "id" {
  description = "returns a string"
  value       = datadog_service_level_objective.this.id
}

output "monitor_search" {
  description = "returns a string"
  value       = datadog_service_level_objective.this.monitor_search
}

output "this" {
  value = datadog_service_level_objective.this
}

