output "external_id" {
  description = "returns a string"
  value       = datadog_integration_aws.this.external_id
}

output "id" {
  description = "returns a string"
  value       = datadog_integration_aws.this.id
}

output "this" {
  value = datadog_integration_aws.this
}

