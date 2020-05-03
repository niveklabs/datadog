output "id" {
  description = "returns a string"
  value       = datadog_dashboard_list.this.id
}

output "this" {
  value = datadog_dashboard_list.this
}

