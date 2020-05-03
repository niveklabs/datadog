output "agents_ipv4" {
  description = "returns a list of string"
  value       = data.datadog_ip_ranges.this.agents_ipv4
}

output "agents_ipv6" {
  description = "returns a list of string"
  value       = data.datadog_ip_ranges.this.agents_ipv6
}

output "api_ipv4" {
  description = "returns a list of string"
  value       = data.datadog_ip_ranges.this.api_ipv4
}

output "api_ipv6" {
  description = "returns a list of string"
  value       = data.datadog_ip_ranges.this.api_ipv6
}

output "apm_ipv4" {
  description = "returns a list of string"
  value       = data.datadog_ip_ranges.this.apm_ipv4
}

output "apm_ipv6" {
  description = "returns a list of string"
  value       = data.datadog_ip_ranges.this.apm_ipv6
}

output "id" {
  description = "returns a string"
  value       = data.datadog_ip_ranges.this.id
}

output "logs_ipv4" {
  description = "returns a list of string"
  value       = data.datadog_ip_ranges.this.logs_ipv4
}

output "logs_ipv6" {
  description = "returns a list of string"
  value       = data.datadog_ip_ranges.this.logs_ipv6
}

output "process_ipv4" {
  description = "returns a list of string"
  value       = data.datadog_ip_ranges.this.process_ipv4
}

output "process_ipv6" {
  description = "returns a list of string"
  value       = data.datadog_ip_ranges.this.process_ipv6
}

output "synthetics_ipv4" {
  description = "returns a list of string"
  value       = data.datadog_ip_ranges.this.synthetics_ipv4
}

output "synthetics_ipv6" {
  description = "returns a list of string"
  value       = data.datadog_ip_ranges.this.synthetics_ipv6
}

output "webhooks_ipv4" {
  description = "returns a list of string"
  value       = data.datadog_ip_ranges.this.webhooks_ipv4
}

output "webhooks_ipv6" {
  description = "returns a list of string"
  value       = data.datadog_ip_ranges.this.webhooks_ipv6
}

output "this" {
  value = datadog_ip_ranges.this
}

